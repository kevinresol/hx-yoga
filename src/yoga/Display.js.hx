package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Display(Int) {
	@:native('DISPLAY_FLEX') var Flex;
	@:native('DISPLAY_NONE') var None;
}