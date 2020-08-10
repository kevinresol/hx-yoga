package yoga;

private typedef Impl = {width:Float, height:Float}

abstract MeasureOutput(Impl) from Impl to Impl {
	public inline function new(width:Float, height:Float) {
		this = {width: width, height: height}
	}
}