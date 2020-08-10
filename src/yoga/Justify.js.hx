package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Justify(Int) {
	@:native('JUSTIFY_FLEX_START') var FlexStart;
	@:native('JUSTIFY_CENTER') var Center;
	@:native('JUSTIFY_FLEX_END') var FlexEnd;
	@:native('JUSTIFY_SPACE_BETWEEN') var SpaceBetween;
	@:native('JUSTIFY_SPACE_AROUND') var SpaceAround;
	@:native('JUSTIFY_SPACE_EVENLY') var SpaceEvenly;
}