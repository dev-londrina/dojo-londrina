using FsoFramework.Test;
using Gee;

namespace FizzBuzz
{
    class TestFizzBuzz : FsoFramework.Test.TestCase {
        public TestFizzBuzz () {
            base("TestFizzBuzz");
            add_test("test_um_item", test_um_item);
            add_test("test_tres_items", test_tres_items);
            add_test("test_cinco_items", test_cinco_items);
            add_test("test_quinze_items", test_quinze_items);
        }

        public void test_um_item() throws GLib.Error {
        	var fizzbuzz = new FizzBuzz(1);
            assert(fizzbuzz.result() == "1");
        }

        public void test_tres_items() throws GLib.Error {
        	var fizzbuzz = new FizzBuzz(3);
            assert(fizzbuzz.result() == "1 2 fizz");
        }

        public void test_cinco_items() throws GLib.Error {
        	var fizzbuzz = new FizzBuzz(5);
            assert(fizzbuzz.result() == "1 2 fizz 4 buzz");
        }

        public void test_quinze_items() throws GLib.Error {
        	var fizzbuzz = new FizzBuzz(15);
            assert(fizzbuzz.result() == "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz");
        }


    }
}
