package;

import yoga.Node;

@:asserts
class LayoutTest {
	public function new() {}

	public function test() {
		var root = Node.create();
		root.setWidth(100);
		// root.setFlexWrap(Wrap);
		trace(root);
		trace(root.getWidth());
		// trace(root.isDirty());
		// root.setWidth(500);
		// root.setHeight(300);
		// root.setJustifyContent(Center);
		// root.setFlexDirection(Row);
		// trace(root.getJustifyContent());

		// var node1 = Node.create();
		// node1.setWidth(100);
		// node1.setHeight(100);

		// var node2 = Node.create();
		// node2.setWidth(100);
		// node2.setHeight(100);

		// root.insertChild(node1, 0);
		// root.insertChild(node2, 1);

		// root.calculateLayout(500, 300, Ltr);

		// var layout = root.getComputedLayout(); // {left: 0, top: 0, width: 500, height: 300}
		// asserts.assert(layout.left == 0);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 500);
		// asserts.assert(layout.height == 300);

		// var layout = node1.getComputedLayout(); // {left: 150, top: 0, width: 100, height: 100}
		// asserts.assert(layout.left == 150);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 100);
		// asserts.assert(layout.height == 100);

		// var layout = node2.getComputedLayout(); // {left: 250, top: 0, width: 100, height: 100}
		// asserts.assert(layout.left == 250);
		// asserts.assert(layout.top == 0);
		// asserts.assert(layout.bottom == 0);
		// asserts.assert(layout.right == 0);
		// asserts.assert(layout.width == 100);
		// asserts.assert(layout.height == 100);

		return asserts.done();
	}
}
