package yoga;

abstract MeasureOutput(java.StdTypes.Int64) {
	public inline function new(width:Float, height:Float) {
		this = YogaMeasureOutput.make(width, height);
	}
}

@:native('com.facebook.yoga.YogaMeasureOutput')
private extern class YogaMeasureOutput {
	static function make(width:Single, height:Single):java.StdTypes.Int64;
}
