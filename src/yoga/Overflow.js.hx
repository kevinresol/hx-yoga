package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Overflow(Int) {
	@:native('OVERFLOW_VISIBLE') var Visible;
	@:native('OVERFLOW_HIDDEN') var Hidden;
	@:native('OVERFLOW_SCROLL') var Scroll;
}