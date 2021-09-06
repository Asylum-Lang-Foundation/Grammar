extern fn printf(string format, ... args) -> s32;

using MyLib.Tests.Extended;
using MyLib.WarioWare.*;

namespace AsylumTest.Parsing;

enum Options : 3 {
	Back,
	Start,
	Exit,
	Retry,
	Undefined
}

enum SpecialEnum {
	Default = 2,
	Message(string, u32) = 7,
	Data {
		string text,
		s32 number,
		f32 value
	}
}

unsafe union Enums {
	Options option;
	SpecialEnum special;
}

pro struct MyBase {
	pub u32 num { pub get; pri set; }
	byte[] arr { get => null; set; }
pri:
	string msg;
}

pri struct MyDerived : MyBase {
	byte[,] arr; // Duplicate data names are allowed for deriving structures.
}

impl MyBase {
	pub fn basic() -> u32 => 3;
}

impl MyDerived {
	pub fn add<T: unsigned | signed | fixed | floating | object, AddAble>(T a, T b) -> T => a + b;
}

pub static inline fn withLabels(myText: string str, int number) {
	printf(str + " " + number + "\n");
}

pub interface ISomeInterface;

pub interface IMyInterface {
	u32 someData;
}

impl IMyInterface {
	fn toImplement();
	fn defaultImplementationDefined() {
		someData = 7;
	}
}

[NoMangle]
[Export]
[Platform("windows")]
pub fn returnsMultiple() -> string, u32 => "Test", 3;

pub fn returnsMultipleImplied() -> var => "Test", 3;

pub fn variadicFunction(u32 ... args) {
	for (a in args) {
		printf("%d\n", a);
	}
}

pub fn main() {
	printf("Hello World!\n");
	{
		printf("Also legal.\n");
	}
	loop {
		loop {
			break 2;
		}
	}
	u32 i = 0;
	while i < 3 i++;
	do
		i++;
	while (i < 4);
	withLabels(number: 7, myText: "Hi");
	for (i = 0; i < 7; i++) {
		printf("%d\n", i);
	}
	for (number in List<u32> { 1, 3, 5, 7 }) {
		printf("%d\n", number);
	}
	for (number in 1..=7) {
		printf("%d\n", number);
	}
	if (i < 8) {
		printf("Hi 1.\n");
	} else if i > 8
		printf("Hi 2.\n");
	else {
		printf("Hi 3.\n");
	}
	switch (i) {
		case 3:
		case 5:
			printf("3 or 5.\n");
			break;
	}
	switch (i => num) {
		case num % 2:
			printf("Odd.\n");
			break;
		default:
			printf("Even.\n");
			break;
	}
	Thread handle = Thread.spawn({
		for (x in 0..3)
			printf("%d\n", x);
		Thread.sleep(5000);
	});
	func threadCode = {
		Thread.sleep(1000);
	};
	Thread.spawn(threadCode);
	handle.join();
	u32 num1, num2, num3;
	string str1 = string str2 = string str3 = "Test strings!";
	string multiple1, u32 multiple2 = returnsMultiple();
	multiple1, multiple2 = returnsMultipleImplied();
	string, u32 myTuple = returnsMultiple();
	num1 = num2 = num3 = 7;
	s32 res1, s32 res2 = 3 ** 2 * (2 + 1), 4 % 1 / 7 & 1;
	u32 c = a**b;

	if &foo == &bar (a++);
	if foo(134)("qwerty")(3)(0x696969) {}
	
	if (sixty == "9")owo();

	Car car = Car {
        licensePlate: "TOY1234",
        rgbColor: Color { red: 50, green: 200 },
        year: 2017
    };
}
