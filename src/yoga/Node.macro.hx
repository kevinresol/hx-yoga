package yoga;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.ds.Option;

class Node {
	public static function build() {
		final fields = Context.getBuildFields();
		final pos = Context.currentPos();
		final target = if (Context.defined('java')) Java else if (Context.defined('js')) Js else null;

		function addValue(name:String, args:Array<String>, auto:Bool) {
			final callArgs = args.map(a -> macro $i{a});
			final funcArgs = args.map(a -> ({name: a, type: null} : FunctionArg));

			fields.push({
				access: [APublic, AInline],
				name: 'get$name',
				kind: FFun({
					args: funcArgs,
					ret: null,
					expr: macro return $p{['this', 'get${name}']}($a{callArgs}).toValue(),
				}),
				pos: pos,
			});
			fields.push({
				access: [APublic],
				name: 'set$name',
				kind: FFun({
					args: funcArgs.concat([{name: 'value', type: macro:yoga.Value}]),
					ret: null,
					expr: {
						final cases = [
							{
								values: [macro Undefined],
								expr: macro throw $v{'set${name}'} + ' with Undefined is not supported',
							},
							{
								values: [macro Auto],
								expr: auto ? macro $p{['this', 'set${name}Auto']}($a{callArgs}) : macro throw $v{'set${name}'} + ' with Auto is not supported',
							},
							{
								values: [macro Point(v)],
								expr: {
									final args = callArgs.concat([macro v]);
									macro $p{['this', 'set${name}']}($a{args});
								}
							},
							{
								values: [macro Percent(v)],
								expr: {
									final args = callArgs.concat([macro v]);
									macro $p{['this', 'set${name}Percent']}($a{args});
								}
							},
						];
						{expr: ESwitch(macro value, cases, null), pos: pos}
					}
				}),
				pos: pos,
			});
		}

		// for some reason js does not support `setFlexBasis('auto')`, see: https://github.com/facebook/yoga/issues/766
		addValue('FlexBasis', [], target != Js);
		addValue('Height', [], true);
		addValue('Width', [], true);
		addValue('MaxHeight', [], false);
		addValue('MaxWidth', [], false);
		addValue('MinHeight', [], false);
		addValue('MinWidth', [], false);
		addValue('Margin', ['edge'], true);
		addValue('Padding', ['edge'], false);
		addValue('Position', ['edge'], false);

		return fields;
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
