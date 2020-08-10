package yoga;

@:jsRequire('yoga-layout')
extern enum abstract PositionType(Int) {
	@:native('POSITION_TYPE_RELATIVE') var Relative;
	@:native('POSITION_TYPE_ABSOLUTE') var Absolute;
}
