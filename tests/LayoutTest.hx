package;

import yoga.FlexDirection;
import yoga.MeasureMode;
import yoga.Node;
import yoga.Edge;

@:asserts
class LayoutTest {
	public function new() {}

	public function test() {
		var root = new Node();
		// root.setWidth(Point(100));
		// // root.setFlexWrap(Wrap);
		// trace(root);
		// trace(root.getWidth());
		// trace(root.isDirty());

		root.setWidth(Point(500));
		root.setHeight(Point(300));
		root.setJustifyContent(Center);
		root.setFlexDirection(Row);

		var node1 = new Node();
		node1.setWidth(Point(100));
		node1.setHeight(Point(100));

		var node2 = new Node();
		node2.setWidth(Point(100));
		node2.setHeight(Point(100));

		asserts.assert(root.getChildCount() == 0);

		root.insertChild(node1, 0);
		root.insertChild(node2, 1);

		asserts.assert(root.getChildCount() == 2);
		asserts.assert(root.getParent() == null);
		// asserts.assert(node1.getParent() == root); // JS does not maintain physical equality?!
		// asserts.assert(node2.getParent() == root); // JS does not maintain physical equality?!

		asserts.assert(root.isDirty());
		root.calculateLayout(Math.NaN, Math.NaN, Ltr);
		asserts.assert(!root.isDirty());

		final edges:Array<Edge> = [Left, Top, Right, Bottom]; // , Start, End, Horizontal, Vertical, All];

		var layout = root.getComputedLayout(); // {left: 0, top: 0, width: 500, height: 300}
		// asserts.assert(layout.left == 0);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 500);
		// asserts.assert(layout.height == 300);
		asserts.assert(root.getComputedLeft() == 0);
		asserts.assert(root.getComputedTop() == 0);
		asserts.assert(root.getComputedWidth() == 500);
		asserts.assert(root.getComputedHeight() == 300);
		for (edge in edges) {
			asserts.assert(root.getComputedMargin(edge) == 0);
			asserts.assert(root.getComputedPadding(edge) == 0);
			asserts.assert(root.getComputedBorder(edge) == 0);
		}

		var layout = node1.getComputedLayout(); // {left: 150, top: 0, width: 100, height: 100}
		// asserts.assert(layout.left == 150);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 100);
		// asserts.assert(layout.height == 100);
		asserts.assert(node1.getComputedLeft() == 150);
		asserts.assert(node1.getComputedTop() == 0);
		asserts.assert(node1.getComputedWidth() == 100);
		asserts.assert(node1.getComputedHeight() == 100);
		for (edge in edges) {
			asserts.assert(root.getComputedMargin(edge) == 0);
			asserts.assert(root.getComputedPadding(edge) == 0);
			asserts.assert(root.getComputedBorder(edge) == 0);
		}

		var layout = node2.getComputedLayout(); // {left: 250, top: 0, width: 100, height: 100}
		// asserts.assert(layout.left == 250);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 100);
		// asserts.assert(layout.height == 100);
		asserts.assert(node2.getComputedLeft() == 250);
		asserts.assert(node2.getComputedTop() == 0);
		asserts.assert(node2.getComputedWidth() == 100);
		asserts.assert(node2.getComputedHeight() == 100);
		for (edge in edges) {
			asserts.assert(root.getComputedMargin(edge) == 0);
			asserts.assert(root.getComputedPadding(edge) == 0);
			asserts.assert(root.getComputedBorder(edge) == 0);
		}

		root.removeChild(node1);
		root.removeChild(node2);

		asserts.assert(root.getChildCount() == 0);

		return asserts.done();
	}

	public function measureFunction() {
		final root = new Node();
		final child = new Node();
		var measureFunctionCalled = false;

		child.setPositionType(Absolute);
		child.setMeasureFunction((w:Float, wm:MeasureMode, h:Float, hm:MeasureMode) -> {
			measureFunctionCalled = true;
			asserts.assert(w == 500);
			asserts.assert(wm == AtMost);
			asserts.assert(Math.isNaN(h));
			asserts.assert(hm == Undefined);
			new yoga.MeasureOutput(101, 42);
		});

		root.insertChild(child, 0);
		root.calculateLayout(500, 500, Ltr);

		asserts.assert(measureFunctionCalled);
		asserts.assert(child.getComputedWidth() == 101);
		asserts.assert(child.getComputedHeight() == 42);
		return asserts.done();
	}
}
