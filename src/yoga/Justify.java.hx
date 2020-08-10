package yoga;

@:native('com.facebook.yoga.YogaJustify')
extern enum Justify {
	@:native('FLEX_START') FlexStart;
	@:native('CENTER') Center;
	@:native('FLEX_END') FlexEnd;
	@:native('SPACE_BETWEEN') SpaceBetween;
	@:native('SPACE_AROUND') SpaceAround;
	@:native('SPACE_EVENLY') SpaceEvenly;
}