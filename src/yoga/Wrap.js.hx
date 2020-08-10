package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Wrap(Int) {
	@:native('WRAP_NO_WRAP') var NoWrap;
	@:native('WRAP_WRAP') var Wrap;
	@:native('WRAP_WRAP_REVERSE') var WrapReverse;
}
