package;

import tink.testrunner.*;
import tink.unit.*;

class RunTests {
	static function main() {
		Runner.run(TestBatch.make([
			// @formatter:off
			new LayoutTest(),
			new GetSetTest(),
			// @formatter:on
		])).handle(Runner.exit);
	}
}
