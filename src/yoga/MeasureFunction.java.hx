package yoga;

private typedef Func = (width:Float, widthMode:MeasureMode, height:Float, heightMode:MeasureMode) -> MeasureOutput;

@:callable
abstract MeasureFunction(YogaMeasureFunction) from YogaMeasureFunction to YogaMeasureFunction {
	@:from public static inline function fromFunc(f:Func):MeasureFunction
		return new SimpleMeasureFunction(f);
}

private class SimpleMeasureFunction implements YogaMeasureFunction {
	final f:Func;

	public function new(f)
		this.f = f;

	public function measure(node:Node, width:Float, widthMode:MeasureMode, height:Float, heightMode:MeasureMode):MeasureOutput
		return f(width, widthMode, height, heightMode);
}

@:native('com.facebook.yoga.YogaMeasureFunction')
private extern interface YogaMeasureFunction {
	function measure(node:Node, width:Single, widthMode:MeasureMode, height:Single, heightMode:MeasureMode):MeasureOutput;
}
