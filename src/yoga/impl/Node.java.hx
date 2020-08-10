package yoga.impl;

import haxe.extern.EitherType;

@:native('com.facebook.yoga.YogaNode')
extern class Node {
	public static inline function create():Node
		return YogaNodeFactory.create();

	function calculateLayout(width:Single, height:Single):Void;
	// function copyStyle(node:Node):Void;
	// function free():Void;
	// function freeRecursive():Void;
	function getAlignContent():Align;
	function getAlignItems():Align;
	function getAlignSelf():Align;
	// function getAspectRatio():Single;
	function getBorder(edge:Edge):Single;
	function getChild(index:Int):Node;
	function getChildCount():Int;
	// function getComputedBorder(edge:Edge):Single;
	// function getComputedBottom():Single;
	// function getComputedLayout():Layout;
	function getLayoutWidth():Single;
	function getLayoutHeight():Single;
	function getLayoutX():Single;
	function getLayoutY():Single;
	function getLayoutMargin(edge:Edge):Single;
	function getLayoutPadding(edge:Edge):Single;
	function getLayoutBorder(edge:Edge):Single;

	function getDisplay():Display;
	function getFlexBasis():NativeValue;
	function getFlexDirection():FlexDirection;
	function getFlexGrow():Single;
	function getFlexShrink():Single;
	function getWrap():Wrap;
	function getHeight():NativeValue;
	function getJustifyContent():Justify;
	function getMargin(edge:Edge):NativeValue;
	function getMaxHeight():NativeValue;
	function getMaxWidth():NativeValue;
	function getMinHeight():NativeValue;
	function getMinWidth():NativeValue;
	function getOverflow():Overflow;
	function getPadding(edge:Edge):NativeValue;
	function getParent():Node;
	function getPosition(edge:Edge):NativeValue;
	function getPositionType():PositionType;
	function getWidth():NativeValue;

	function addChildAt(child:Node, index:Int):Void;
	function isDirty():Bool;
	// function markDirty():Void;
	function indexOf(child:Node):Int;
	function removeChildAt(index:Int):Node;
	// function reset():Void;
	function setAlignContent(alignContent:Align):Void;
	function setAlignItems(alignItems:Align):Void;
	function setAlignSelf(alignSelf:Align):Void;
	// function setAspectRatio(aspectRatio:Single):Void;
	function setBorder(edge:Edge, borderWidth:Single):Void;
	function setDisplay(display:Display):Void;
	function setFlex(flex:Single):Void;
	function setFlexBasis(flexBasis:Single):Void;
	function setFlexBasisPercent(flexBasis:Single):Void;
	function setFlexBasisAuto():Void;
	function setDirection(direction:Direction):Void;
	function setFlexDirection(flexDirection:FlexDirection):Void;
	function setFlexGrow(flexGrow:Single):Void;
	function setFlexShrink(flexShrink:Single):Void;
	function setWrap(flexWrap:Wrap):Void;
	function setHeight(height:Single):Void;
	function setHeightAuto():Void;
	function setHeightPercent(height:Single):Void;
	function setJustifyContent(justifyContent:Justify):Void;
	function setMargin(edge:Edge, margin:Single):Void;
	function setMarginAuto(edge:Edge):Void;
	function setMarginPercent(edge:Edge, margin:Single):Void;
	function setMaxHeight(maxHeight:Single):Void;
	function setMaxHeightPercent(maxHeight:Single):Void;
	function setMaxWidth(maxWidth:Single):Void;
	function setMaxWidthPercent(maxWidth:Single):Void;
	// function setMeasureFunc(measureFunc:MeasureFunction):Void;
	function setMinHeight(minHeight:Single):Void;
	function setMinHeightPercent(minHeight:Single):Void;
	function setMinWidth(minWidth:Single):Void;
	function setMinWidthPercent(minWidth:Single):Void;
	function setOverflow(overflow:Overflow):Void;
	function setPadding(edge:Edge, padding:Single):Void;
	function setPaddingPercent(edge:Edge, padding:Single):Void;
	function setPosition(edge:Edge, position:Single):Void;
	function setPositionPercent(edge:Edge, position:Single):Void;
	function setPositionType(positionType:PositionType):Void;
	function setWidth(width:Single):Void;
	function setWidthAuto():Void;
	function setWidthPercent(width:Single):Void;
	// function unsetMeasureFunc():Void;
	// }
}

@:native('com.facebook.yoga.YogaNodeFactory')
private extern class YogaNodeFactory {
	static function create():Node;
}

@:using(yoga.util.NativeValueTools)
@:native('com.facebook.yoga.YogaValue')
extern class NativeValue {
	final value:Single;
	final unit:Unit;
}
