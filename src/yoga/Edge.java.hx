package yoga;

@:native('com.facebook.yoga.YogaEdge')
extern enum Edge {
	@:native('LEFT') Left;
	@:native('TOP') Top;
	@:native('RIGHT') Right;
	@:native('BOTTOM') Bottom;
	@:native('START') Start;
	@:native('END') End;
	@:native('HORIZONTAL') Horizontal;
	@:native('VERTICAL') Vertical;
	@:native('ALL') All;
}