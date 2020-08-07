package yoga;

import yoga.impl.Node as NodeImpl;

extern abstract Node(NodeImpl) from NodeImpl to NodeImpl {
	public inline function new()
		this = NodeImpl.create();
	static inline function create():Node
		return new Node();

	// inline function calculateLayout(?width:Float, ?height:Float, ?direction:Direction):Void
	// 	this.calculateLayout(width, height, direction);
	// inline function copyStyle(node:Node):Void
	// 	this.copyStyle(node);
	// inline function free():Void
	// 	this.free();
	// inline function freeRecursive():Void
	// 	this.freeRecursive();
	// inline function getAlignContent():Align
	// 	return this.getAlignContent();
	// inline function getAlignItems():Align
	// 	return this.getAlignItems();
	// inline function getAlignSelf():Align
	// 	return this.getAlignSelf();
	// inline function getAspectRatio():Float
	// 	return this.getAspectRatio();
	// inline function getBorder(edge:Edge):Float
	// 	return this.getBorder(edge);
	// inline function getChild(index:Float):Node
	// 	return this.getChild(index);
	// inline function getChildCount():Float
	// 	return this.getChildCount();
	// inline function getComputedBorder(edge:Edge):Float
	// 	return this.getComputedBorder(edge);
	// inline function getComputedBottom():Float
	// 	return this.getComputedBottom();
	// inline function getComputedHeight():Float
	// 	return this.getComputedHeight();
	// inline function getComputedLayout():Layout
	// 	return this.getComputedLayout();
	// inline function getComputedLeft():Float
	// 	return this.getComputedLeft();
	// inline function getComputedMargin(edge:Edge):Float
	// 	return this.getComputedMargin(edge);
	// inline function getComputedPadding(edge:Edge):Float
	// 	return this.getComputedPadding(edge);
	// inline function getComputedRight():Float
	// 	return this.getComputedRight();
	// inline function getComputedTop():Float
	// 	return this.getComputedTop();
	// inline function getComputedWidth():Float
	// 	return this.getComputedWidth();
	// inline function getDisplay():Display
	// 	return this.getDisplay();
	// inline function getFlexBasis():Float
	// 	return this.getFlexBasis();
	// inline function getFlexDirection():FlexDirection
	// 	return this.getFlexDirection();
	// inline function getFlexGrow():Float
	// 	return this.getFlexGrow();
	// inline function getFlexShrink():Float
	// 	return this.getFlexShrink();
	// inline function getFlexWrap():Wrap
	// 	return this.getFlexWrap();
	// inline function getHeight():Value
	// 	return this.getHeight();
	// inline function getJustifyContent():Justify
	// 	return this.getJustifyContent();
	// inline function getMargin(edge:Edge):Value
	// 	return this.getMargin(edge);
	// inline function getMaxHeight():Value
	// 	return this.getMaxHeight();
	// inline function getMaxWidth():Value
	// 	return this.getMaxWidth();
	// inline function getMinHeight():Value
	// 	return this.getMinHeight();
	// inline function getMinWidth():Value
	// 	return this.getMinWidth();
	// inline function getOverflow():Overflow
	// 	return this.getOverflow();
	// inline function getPadding(edge:Edge):Value
	// 	return this.getPadding(edge);
	// inline function getParent():Node
	// 	return this.getParent();
	// inline function getPosition(edge:Edge):Value
	// 	return this.getPosition(edge);
	// inline function getPositionType():PositionType
	// 	return this.getPositionType();
	inline function getWidth():Value
		return this.getWidth();
	// inline function insertChild(child:Node, index:Float):Void
	// 	this.insertChild(child, index);
	// inline function isDirty():Bool
	// 	return this.isDirty();

	// inline function markDirty():Void
	// 	this.markDirty();
	// inline function removeChild(child:Node):Void
	// 	this.removeChild(child);
	// inline function reset():Void
	// 	this.reset();
	// inline function setAlignContent(alignContent:Align):Void
	// 	this.setAlignContent(alignContent);
	// inline function setAlignItems(alignItems:Align):Void
	// 	this.setAlignItems(alignItems);
	// inline function setAlignSelf(alignSelf:Align):Void
	// 	this.setAlignSelf(alignSelf);
	// inline function setAspectRatio(aspectRatio:Float):Void
	// 	this.setAspectRatio(aspectRatio);
	// inline function setBorder(edge:Edge, borderWidth:Float):Void
	// 	this.setBorder(edge, borderWidth);
	// inline function setDisplay(display:Display):Void
	// 	this.setDisplay(display);
	// inline function setFlex(flex:Float):Void
	// 	this.setFlex(flex);
	// inline function setFlexBasis(flexBasis:Float):Void
	// 	this.setFlexBasis(flexBasis);
	// inline function setFlexBasisAuto():Void
	// 	this.setFlexBasis('auto');
	// inline function setFlexBasisPercent(flexBasis:Float):Void
	// 	this.setFlexBasisPercent(flexBasis);
	// inline function setFlexDirection(flexDirection:FlexDirection):Void
	// 	this.setFlexDirection(flexDirection);
	// inline function setFlexGrow(flexGrow:Float):Void
	// 	this.setFlexGrow(flexGrow);
	// inline function setFlexShrink(flexShrink:Float):Void
	// 	this.setFlexShrink(flexShrink);
	// inline function setFlexWrap(flexWrap:Wrap):Void
	// 	this.setFlexWrap(flexWrap);
	// inline function setHeight(height:Float):Void
	// 	this.setHeight(height);
	// inline function setHeightAuto():Void
	// 	this.setHeightAuto();
	// inline function setHeightPercent(height:Float):Void
	// 	this.setHeightPercent(height);
	// inline function setJustifyContent(justifyContent:Justify):Void
	// 	this.setJustifyContent(justifyContent);
	// inline function setMargin(edge:Edge, margin:Float):Void
	// 	this.setMargin(edge, margin);
	// inline function setMarginAuto(edge:Edge):Void
	// 	this.setMarginAuto(edge);
	// inline function setMarginPercent(edge:Edge, margin:Float):Void
	// 	this.setMarginPercent(edge, margin);
	// inline function setMaxHeight(maxHeight:Float):Void
	// 	this.setMaxHeight(maxHeight);
	// inline function setMaxHeightPercent(maxHeight:Float):Void
	// 	this.setMaxHeightPercent(maxHeight);
	// inline function setMaxWidth(maxWidth:Float):Void
	// 	this.setMaxWidth(maxWidth);
	// inline function setMaxWidthPercent(maxWidth:Float):Void
	// 	this.setMaxWidthPercent(maxWidth);
	// inline function setMeasureFunc(measureFunc:MeasureFunction):Void
	// 	this.setMeasureFunc(measureFunc);
	// inline function setMinHeight(minHeight:Float):Void
	// 	this.setMinHeight(minHeight);
	// inline function setMinHeightPercent(minHeight:Float):Void
	// 	this.setMinHeightPercent(minHeight);
	// inline function setMinWidth(minWidth:Float):Void
	// 	this.setMinWidth(minWidth);
	// inline function setMinWidthPercent(minWidth:Float):Void
	// 	this.setMinWidthPercent(minWidth);
	// inline function setOverflow(overflow:Overflow):Void
	// 	this.setOverflow(overflow);
	// inline function setPadding(edge:Edge, padding:Float):Void
	// 	this.setPadding(edge, padding);
	// inline function setPaddingPercent(edge:Edge, padding:Float):Void
	// 	this.setPaddingPercent(edge, padding);
	// inline function setPosition(edge:Edge, position:Float):Void
	// 	this.setPosition(edge, position);
	// inline function setPositionPercent(edge:Edge, position:Float):Void
	// 	this.setPositionPercent(edge, position);
	// inline function setPositionType(positionType:PositionType):Void
	// 	this.setPositionType(positionType);
	inline function setWidth(width:Single):Void
		this.setWidth(width);
	// inline function setWidthAuto():Void
	// 	this.setWidthAuto();
	// inline function setWidthPercent(width:Float):Void
	// 	this.setWidthPercent(width);
	// inline function unsetMeasureFunc():Void
	// 	this.unsetMeasureFunc();
}
