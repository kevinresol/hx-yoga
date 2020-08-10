package yoga;

abstract MeasureOutput(haxe.Int64) {
	public inline function new(width:Float, height:Float) {
		this = YogaMeasureOutput.make(width, height);
	}
}

@:native('com.facebook.yoga.YogaMeasureOutput')
private extern class YogaMeasureOutput {
	static function make(width:Single, height:Single):haxe.Int64;
}
