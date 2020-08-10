package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Unit(Int) {
	@:native('UNIT_UNDEFINED') var Undefined;
	@:native('UNIT_POINT') var Point;
	@:native('UNIT_PERCENT') var Percent;
	@:native('UNIT_AUTO') var Auto;
}
