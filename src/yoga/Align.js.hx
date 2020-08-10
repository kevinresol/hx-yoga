package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Align(Int) {
	@:native('ALIGN_AUTO') var Auto;
	@:native('ALIGN_FLEX_START') var FlexStart;
	@:native('ALIGN_CENTER') var Center;
	@:native('ALIGN_FLEX_END') var FlexEnd;
	@:native('ALIGN_STRETCH') var Stretch;
	@:native('ALIGN_BASELINE') var Baseline;
	@:native('ALIGN_SPACE_BETWEEN') var SpaceBetween;
	@:native('ALIGN_SPACE_AROUND') var SpaceAround;
}