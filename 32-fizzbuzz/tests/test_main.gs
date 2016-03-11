uses FizzBuzz

init
	Test.init(ref args)
	TestSuite.get_root().add_suite(new TestFizzBuzz().get_suite())
	Test.run()
