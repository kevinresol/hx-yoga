package;

import yoga.*;

/**
 * This test suite basically is to make sure our externs are correct
 */
@:asserts
class GetSetTest {
	public function new() {}

	public function align() {
		final root = new Node();
		final list:Array<Align> = [Auto, FlexStart, Center, FlexEnd, Stretch, Baseline, SpaceBetween, SpaceAround];
		for (v in list) {
			root.setAlignContent(v);
			root.setAlignItems(v);
			root.setAlignSelf(v);
			asserts.assert(root.getAlignContent() == v);
			asserts.assert(root.getAlignItems() == v);
			asserts.assert(root.getAlignSelf() == v);
		}
		return asserts.done();
	}

	public function display() {
		final root = new Node();
		final list:Array<Display> = [Flex, None];
		for (v in list) {
			root.setDisplay(v);
			asserts.assert(root.getDisplay() == v);
		}
		return asserts.done();
	}

	public function justify() {
		final root = new Node();
		final list:Array<Justify> = [FlexStart, Center, FlexEnd, SpaceBetween, SpaceAround, SpaceEvenly];
		for (v in list) {
			root.setJustifyContent(v);
			asserts.assert(root.getJustifyContent() == v);
		}

		return asserts.done();
	}

	// public function direction() {
	// 	final root = new Node();
	// 	final list:Array<Direction> = [Inherit, Ltr, Rtl];
	// 	for (v in list) {
	// 		root.setDirection(v);
	// 		asserts.assert(root.getDirection() == v);
	// 	}
	// 	return asserts.done();
	// }

	public function flexDirection() {
		final root = new Node();
		final list:Array<FlexDirection> = [Column, ColumnReverse, Row, RowReverse];
		for (v in list) {
			root.setFlexDirection(v);
			asserts.assert(root.getFlexDirection() == v);
		}

		return asserts.done();
	}

	public function overflow() {
		final root = new Node();
		final list:Array<Overflow> = [Visible, Hidden, Scroll];
		for (v in list) {
			root.setOverflow(v);
			asserts.assert(root.getOverflow() == v);
		}

		return asserts.done();
	}

	public function position() {
		final root = new Node();
		final list:Array<PositionType> = [Relative, Absolute];
		for (v in list) {
			root.setPositionType(v);
			asserts.assert(root.getPositionType() == v);
		}

		return asserts.done();
	}

	public function wrap() {
		final root = new Node();
		final list:Array<Wrap> = [NoWrap, Wrap, WrapReverse];
		for (v in list) {
			root.setFlexWrap(v);
			asserts.assert(root.getFlexWrap() == v);
		}

		return asserts.done();
	}

	public function value() {
		final root = new Node();
		final edges:Array<Edge> = [Left, Top, Right, Bottom]; // , Start, End, Horizontal, Vertical, All];
		final list:Array<Value> = [Point(42), Percent(42)];

		asserts.assert(root.getMaxHeight() == Undefined);
		asserts.assert(root.getMaxWidth() == Undefined);
		asserts.assert(root.getMinHeight() == Undefined);
		asserts.assert(root.getMinWidth() == Undefined);

		for (edge in edges) {
			asserts.assert(root.getPadding(edge) == Undefined);
			asserts.assert(root.getPosition(edge) == Undefined);
		}

		for (v in list) {
			root.setMaxHeight(v);
			root.setMaxWidth(v);
			root.setMinHeight(v);
			root.setMinWidth(v);
			asserts.assert(root.getMaxHeight().eq(v));
			asserts.assert(root.getMaxWidth().eq(v));
			asserts.assert(root.getMinHeight().eq(v));
			asserts.assert(root.getMinWidth().eq(v));

			for (edge in edges) {
				root.setPadding(edge, v);
				root.setPosition(edge, v);
				asserts.assert(root.getPadding(edge).eq(v));
				asserts.assert(root.getPosition(edge).eq(v));
			}
		}
		return asserts.done();
	}

	public function autoValue() {
		final root = new Node();
		final edges:Array<Edge> = [Left, Top, Right, Bottom]; // , Start, End, Horizontal, Vertical, All];
		final list:Array<Value> = [Point(42), Percent(42), Auto];

		asserts.assert(root.getHeight() == Auto);
		asserts.assert(root.getWidth() == Auto);
		asserts.assert(root.getFlexBasis() == Auto);

		for (edge in edges)
			asserts.assert(root.getMargin(edge) == Undefined);

		for (v in list) {
			root.setHeight(v);
			root.setWidth(v);
			root.setFlexBasis(v);
			asserts.assert(root.getHeight().eq(v));
			asserts.assert(root.getWidth().eq(v));
			#if js // for some reason js does not support `setFlexBasis('auto')`
			if (v != Auto)
			#end
			asserts.assert(root.getFlexBasis().eq(v));

			for (edge in edges) {
				root.setMargin(edge, v);
				asserts.assert(root.getMargin(edge).eq(v));
			}
		}
		return asserts.done();
	}

	public function border() {
		final root = new Node();
		final edges:Array<Edge> = [Left, Top, Right, Bottom]; // , Start, End, Horizontal, Vertical, All];

		for (edge in edges) {
			asserts.assert(Math.isNaN(root.getBorder(edge)));
			root.setBorder(edge, 1);
			asserts.assert(root.getBorder(edge) == 1);
		}
		return asserts.done();
	}

	public function aspectRatio() {
		final root = new Node();

		root.setAspectRatio(1.125); // =1+1/8, doesn't lose precision during the double to float conversion on java
		asserts.assert(root.getAspectRatio() == 1.125);

		return asserts.done();
	}
}
