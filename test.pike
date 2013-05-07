#!/usr/bin/env pike
// comment

#charset utf-8;

string multi = #"multi1
multi2";

#line 9
#10

#pike 7.8

constant my_line = __LINE__;
constant compile_time = __DATE__ "T" __TIME__;

#define DEBUG
/* block comment
 * with a " double "fnutt"
 * and a * (star)
 */

#if 0
#error
#endif

enum MyStuff {
	ONE = 1,
	TWO,
	THREE,
	N_STUFF
}

#define roxen roxenp() // Missing semicolon affecting next statement
void some_prototype(multiset m,         mapping m2,             array a, string s, float f, int i);

void another_prototype(multiset(int) m, mapping(string:int) m2, array a, string s, float f, int i);
array(array(int)) diff_compare_table(array a, array b);

void löksoppa (multiset lök, int soppa);

class SöndagsStek {}

array(SöndagsStek) get_roast ()
{
	return ({ SöndagsStek() });
}

class classFoo {
	inherit classBar;

	static mapping m4 = [];

	local mixed `foo(int i) {}

	mixed `[](string|int index) { // Some functions have special names (operator function)
		return m[index];
	}

	mixed `()(function fun) {     // Now the parantheses are geting tricky...
	}

	int(0..1) odd(mixed in) {
		catch { return in % 2; };
	}

	string|int one() { return "1"||1; };

	object _this = this;
	program _this_program = this_program;
}


constant animal = (program)"animal.pike";

//! Lets add a docblock here and see if we eventually will
//! parse doc comments
//!
//! @param argc
//!  Number of arguments passed to the method
//!
//! @param argv
//!  Array of actual arguments
//!
//! @returns
//!  Absoluteley nothing
void main(int argc, array(string) argv) {


	// data types
	int one = 1;
	int minus = -1;
	int(0..1) bool = true;
	int hex = 0x4e
	int binary = 0b1001110;
	int octal = 0116;
	int char = 'N';
	float pi = 3.14;
	float percent = .01;
	float permille = 001e-3;
	string bar = "bar";
	string foo ="foo";
	array(mixed) arr;
	foo(mixed) invalid; // Spot the function call
	mixed mix = (< 1, "2", i >);
	program p = compile_file("hello_world.pike");

	function lamb = lambda(int i) {
		return i;
	}

	function_call("string",
	              other("string"),
	              "string",
	              1,
	              #string "file.txt"  // This is a preprocessor thingy,
	                                  // Not in the right color here, but no one ever uses it.
	              );

	for (int i=0; i < 10; i++) {
		write("i: %d", i);
	}

	string foo ="string";

	foreach ( ({}) ) {
		break;
	}

	function f = lambda(int i, string s) {
		string bar = "";
		return;
	}

	string format_string = sprintf("%d monkeys in a %2s %*s %[0]d\n", 12, "tree");
	string fnutt = "string\"foo'bar\n";
	int char = 'N'; // 78

	string hash = "foo#"+ 2 + #"newline
	in this string";

	string slash = "\\back\\"\"\\";
	string back_and_fnutt = "\\\"string"; // Fail! No It's OK now ;)

	return;
}
