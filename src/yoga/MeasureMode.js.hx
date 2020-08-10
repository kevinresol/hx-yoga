package yoga;

@:jsRequire('yoga-layout')
extern enum abstract MeasureMode(Int) {
	@:native('MEASURE_MODE_UNDEFINED') var Undefined;
	@:native('MEASURE_MODE_EXACTLY') var Exactly;
	@:native('MEASURE_MODE_AT_MOST') var AtMost;
}
