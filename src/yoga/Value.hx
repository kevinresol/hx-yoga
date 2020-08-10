package yoga;

@:using(yoga.Value.ValueTools)
enum Value {
	Undefined;
	Point(v:Float);
	Percent(v:Float);
	Auto;
}

class ValueTools {
	public static function eq(v1:Value, v2:Value) {
		return switch [v1, v2] {
			case [Undefined, Undefined] | [Auto, Auto]: true;
			case [Point(p1), Point(p2)] | [Percent(p1), Percent(p2)]: p1 == p2;
			case _: false;
		}
	}
}
