package yoga.util;

class NativeValueTools {
	public static function toValue(v:yoga.impl.Node.NativeValue):yoga.Value {
		return switch v.unit {
			case Undefined: Undefined;
			case Point: Point(v.value);
			case Percent: Percent(v.value);
			case Auto: Auto;
		}
	}
}
