package yoga;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.ds.Option;

class Node {
	public static function build() {
		final fields = Context.getBuildFields();
		final pos = Context.currentPos();
		final target = if (Context.defined('java')) Java else if (Context.defined('js')) Js else null;

		function addValue(name:String, args:Array<String>, styles:SetterStyles) {
			final callArgs = args.map(a -> macro $i{a});
			final funcArgs = args.map(a -> ({name: a, type: null} : FunctionArg));

			fields.push({
				access: [APublic, AInline],
				name: 'get$name',
				kind: FFun({
					args: funcArgs,
					ret: null,
					expr: macro return ${get(name, callArgs)},
				}),
				pos: pos,
			});
			fields.push({
				access: [APublic, AInline],
				name: 'set$name',
				kind: FFun({
					args: funcArgs.concat([{name: 'value', type: macro:yoga.Value}]),
					ret: null,
					expr: {
						final cases = [
							{
								values: [macro Undefined],
								expr: null,
							},
							{
								values: [macro Auto],
								expr: switch styles.auto {
									case Some(style): setAuto(name, callArgs, style);
									case None: null;
								},
							},
							{
								values: [macro Point(v)],
								expr: setPoint(name, callArgs, macro v, styles.point),
							},
							{
								values: [macro Percent(v)],
								expr: setPercent(name, callArgs, macro v, styles.percent),
							},
						];
						{expr: ESwitch(macro value, cases, null), pos: pos}
					}
				}),
				pos: pos,
			});
		}

		final pointStyle = PointSetterStyle.Dedicated;
		final percentStyle = switch target {
			case Java: PercentSetterStyle.Dedicated;
			case Js: PercentSetterStyle.Overload;
		}
		final autoStyle = switch target {
			case Java: AutoSetterStyle.Dedicated;
			case Js: AutoSetterStyle.Overload;
		}

		addValue('FlexBasis', [], {
			point: pointStyle,
			percent: percentStyle,
			auto: target == Js ? None : Some(autoStyle)
		}); // for some reason js does not support `setFlexBasis('auto')`
		addValue('Height', [], {point: pointStyle, percent: percentStyle, auto: Some(autoStyle)});
		addValue('Width', [], {point: pointStyle, percent: percentStyle, auto: Some(autoStyle)});
		addValue('MaxHeight', [], {point: pointStyle, percent: percentStyle, auto: None});
		addValue('MaxWidth', [], {point: pointStyle, percent: percentStyle, auto: None});
		addValue('MinHeight', [], {point: pointStyle, percent: percentStyle, auto: None});
		addValue('MinWidth', [], {point: pointStyle, percent: percentStyle, auto: None});
		addValue('Margin', ['edge'], {point: pointStyle, percent: Dedicated, auto: Some(Dedicated)});
		addValue('Padding', ['edge'], {point: pointStyle, percent: Dedicated, auto: None});
		addValue('Position', ['edge'], {point: pointStyle, percent: Dedicated, auto: None});

		return fields;
	}

	static function get(name, args) {
		return macro $p{['this', 'get${name}']}($a{args}).toValue();
	}

	static function setPoint(name, args, v, style:PointSetterStyle) {
		return switch style {
			case Dedicated:
				final args = args.concat([v]);
				macro $p{['this', 'set${name}']}($a{args});
		}
	}

	static function setPercent(name, args, v, style:PercentSetterStyle) {
		return switch style {
			case Dedicated:
				final args = args.concat([v]);
				macro $p{['this', 'set${name}Percent']}($a{args});
			case Overload:
				final args = args.concat([macro $v + '%']);
				macro $p{['this', 'set${name}']}($a{args});
		}
	}

	static function setAuto(name, args, style:AutoSetterStyle) {
		return switch style {
			case Dedicated:
				macro $p{['this', 'set${name}Auto']}($a{args});
			case Overload:
				final args = args.concat([macro 'auto']);
				macro $p{['this', 'set${name}']}($a{args});
		}
	}
}

private enum Target {
	Java;
	Js;
}

private typedef SetterStyles = {
	point:PointSetterStyle,
	percent:PercentSetterStyle,
	auto:Option<AutoSetterStyle>,
}

private enum PointSetterStyle {
	Dedicated;
}

private enum PercentSetterStyle {
	Dedicated;
	Overload;
}

private enum AutoSetterStyle {
	Dedicated;
	Overload;
}
