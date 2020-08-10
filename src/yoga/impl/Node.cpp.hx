package yoga.impl;

import haxe.extern.EitherType;

class YGNodeType extends ammer.Pointer<"YGNode", Yoga> {
	// public function isDirty(_this:ammer.ffi.This):Bool;
}

// @:ammer.struct
class YGValue extends ammer.Library<"YGValue"> {
	public var value:Single;
	public var unit:Int;
}

class YGUnit extends ammer.Library<"yoga"> {
	public static var YGUnitUndefined:Int;
	public static var YGUnitPoint:Int;
	public static var YGUnitPercent:Int;
	public static var YGUnitAuto:Int;
}

abstract Node(YGNodeType) from YGNodeType to YGNodeType {
	public static function create():Node
		return Yoga.YGNodeNew();

	public inline function setWidth(width:Single):Void {
		return Yoga.YGNodeStyleSetWidth(this, width);
	}

	public inline function getWidth():YGValue {
		return Yoga.YGNodeStyleGetWidth(this);
	}

	// public inline function setFlexWrap(wrap:Wrap):Void
	// 	return Yoga.YGNodeStyleSetFlexWrap(this, wrap);
}

class Yoga extends ammer.Library<"yoga"> {
	public static function YGNodeNew():YGNodeType;

	// function calculateLayout(?width:Float, ?height:Float, ?direction:Direction):Void;
	// function copyStyle(node:Node):Void;
	// function free():Void;
	// function freeRecursive():Void;
	// function getAlignContent():Align;
	// function getAlignItems():Align;
	// function getAlignSelf():Align;
	// function getAspectRatio():Float;
	// function getBorder(edge:Edge):Float;
	// function getChild(index:Float):Node;
	// function getChildCount():Float;
	// function getComputedBorder(edge:Edge):Float;
	// function getComputedBottom():Float;
	// function getComputedHeight():Float;
	// function getComputedLayout():Layout;
	// function getComputedLeft():Float;
	// function getComputedMargin(edge:Edge):Float;
	// function getComputedPadding(edge:Edge):Float;
	// function getComputedRight():Float;
	// function getComputedTop():Float;
	// function getComputedWidth():Float;
	// function getDisplay():Display;
	// function getFlexBasis():Float;
	// function getFlexDirection():FlexDirection;
	// function getFlexGrow():Float;
	// function getFlexShrink():Float;
	// function getFlexWrap():Wrap;
	// function getHeight():Value;
	// function getJustifyContent():Justify;
	// function getMargin(edge:Edge):Value;
	// function getMaxHeight():Value;
	// function getMaxWidth():Value;
	// function getMinHeight():Value;
	// function getMinWidth():Value;
	// function getOverflow():Overflow;
	// function getPadding(edge:Edge):Value;
	// function getParent():Node;
	// function getPosition(edge:Edge):Value;
	// function getPositionType():PositionType;
	public static function YGNodeStyleGetWidth(node:YGNodeType):YGValue;

	// function insertChild(child:Node, index:Float):Void;
	// function isDirty():Bool;
	// function markDirty():Void;
	// function removeChild(child:Node):Void;
	// function reset():Void;
	// function setAlignContent(alignContent:Align):Void;
	// function setAlignItems(alignItems:Align):Void;
	// function setAlignSelf(alignSelf:Align):Void;
	// function setAspectRatio(aspectRatio:Float):Void;
	// function setBorder(edge:Edge, borderWidth:Float):Void;
	// function setDisplay(display:Display):Void;
	// function setFlex(flex:Float):Void;
	// function setFlexBasis(flexBasis:EitherType<Float, String>):Void;
	// function setFlexBasisPercent(flexBasis:Float):Void;
	// function setFlexDirection(flexDirection:FlexDirection):Void;
	// function setFlexGrow(flexGrow:Float):Void;
	// function setFlexShrink(flexShrink:Float):Void;
	// public static function YGNodeStyleSetFlexWrap(node:YGNodeType, v:Int):Void;
	// function setHeight(height:EitherType<Float, String>):Void;
	// function setHeightAuto():Void;
	// function setHeightPercent(height:Float):Void;
	// function setJustifyContent(justifyContent:Justify):Void;
	// function setMargin(edge:Edge, margin:Float):Void;
	// function setMarginAuto(edge:Edge):Void;
	// function setMarginPercent(edge:Edge, margin:Float):Void;
	// function setMaxHeight(maxHeight:EitherType<Float, String>):Void;
	// function setMaxHeightPercent(maxHeight:Float):Void;
	// function setMaxWidth(maxWidth:EitherType<Float, String>):Void;
	// function setMaxWidthPercent(maxWidth:Float):Void;
	// function setMeasureFunc(measureFunc:MeasureFunction):Void;
	// function setMinHeight(minHeight:EitherType<Float, String>):Void;
	// function setMinHeightPercent(minHeight:Float):Void;
	// function setMinWidth(minWidth:EitherType<Float, String>):Void;
	// function setMinWidthPercent(minWidth:Float):Void;
	// function setOverflow(overflow:Overflow):Void;
	// function setPadding(edge:Edge, padding:EitherType<Float, String>):Void;
	// function setPaddingPercent(edge:Edge, padding:Float):Void;
	// function setPosition(edge:Edge, position:EitherType<Float, String>):Void;
	// function setPositionPercent(edge:Edge, position:Float):Void;
	// function setPositionType(positionType:PositionType):Void;
	// function setWidth(width:EitherType<Float, String>):Void;
	public static function YGNodeStyleSetWidth(node:YGNodeType, width:Single):Void;

	// function setWidthAuto():Void;
	// function setWidthPercent(width:Float):Void;
	// function unsetMeasureFunc():Void;
}
