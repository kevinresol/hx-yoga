package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Direction(Int) {
	@:native('DIRECTION_INHERIT') var Inherit;
	@:native('DIRECTION_LTR') var Ltr;
	@:native('DIRECTION_RTL') var Rtl;
}