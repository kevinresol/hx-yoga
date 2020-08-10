package yoga;

@:jsRequire('yoga-layout')
extern enum abstract Edge(Int) {
	@:native('EDGE_LEFT') var Left;
	@:native('EDGE_TOP') var Top;
	@:native('EDGE_RIGHT') var Right;
	@:native('EDGE_BOTTOM') var Bottom;
	@:native('EDGE_START') var Start;
	@:native('EDGE_END') var End;
	@:native('EDGE_HORIZONTAL') var Horizontal;
	@:native('EDGE_VERTICAL') var Vertical;
	@:native('EDGE_ALL') var All;
}