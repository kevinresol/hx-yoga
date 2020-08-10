package yoga;

@:native('com.facebook.yoga.YogaAlign')
extern enum Align {
	@:native('AUTO') Auto;
	@:native('FLEX_START') FlexStart;
	@:native('CENTER') Center;
	@:native('FLEX_END') FlexEnd;
	@:native('STRETCH') Stretch;
	@:native('BASELINE') Baseline;
	@:native('SPACE_BETWEEN') SpaceBetween;
	@:native('SPACE_AROUND') SpaceAround;
}