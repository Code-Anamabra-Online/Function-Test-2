import 'package:exam3/exam3.dart' as exam3;

void main() async {
  print(addInt(3, 5));

//calling un named function in 4b
  print(multiply(4, 5)); // Output: 20

  // 7
  greet('Alice', 30);
  //b
  greet2(name2: 'Alice', age2: 30);

  //9
  greeting(name: 'Alice');

  //10
  greets('Bob', 'Hello');

  //11
  printMessage('Hello, World!');

  //12
  outerFunction();

  //13
  // Define a function to add two numbers
  int add(int a, int b) {
    return a + b;
  }

  // Pass the 'add' function as a parameter to the higher-order function
  higherOrderFunction(3, 5, add); // Output: 8

  //15
  greet3('Alice'); // Output: Hello, Alice!
  greet3('');

  //17
  print('Starting...');
  myAsyncFunction(); // Calling the asynchronous function
  print('Continuing with other tasks...');

  //18
  print('Fetching data...');

  // Call the asynchronous function and wait for the result
  int result = await fetchData();

  print('Data fetched: $result');

  //19
  //myFunction();
}

//1. function in dart just like every other programming language is a block of re
//reusable code meant to perform a particular task, as shown below.
// Named function
int addInt(int a, int b) {
  return a + b;
}

//2. function is declared by specifying the return type and the the fn name,
// a closed brackets for the parameter if required and curly brackets for body.
int name(parameters) {
  return parameters;
}
//3. main()fn is where execution of programme start without it, programme can not run.

//4. different between named and un-named function
int subtract(int a, int b) {
  //named function
  return a - b;
}

var multiply = (int a, int b) {
  //un-named function which can be called anywhere
  return a * b;
};
// calling un named fn

//5.return type refers to the data type a fn will return after execution.

double myProducts(int a, int b) {
  // Function body
  // Optionally, return a value of returnType
  return (2.7 * 8.1);
}

//6. parameter is passed by including it in the parenthesis after fn name
String fullName(String firstName, surName) {
  return fullName(firstName, surName);
}

//7. positional parameter
void greet(String name, int age) {
  print('Hello, $name! You are $age years old.');
}

//named parameter
void greet2({String? name2, int? age2}) {
  print('Hello, $name2 You are $age2 years old.');
}

//8 arrow is used to write fn with single expression as shown below
int square(int x) => x * x;

//9 how default parameter is used
void greeting({String name = 'World'}) {
  print('Hello, $name!');
}

//10 optional parameter
void greets(String name, [String prefix = 'Hello']) {
  print('$prefix, $name!');
}

//11 void used to indicate function with no return, rather void functions.
void printMessage(String message) {
  print(message);
}

//12 nested function
void outerFunction() {
  print('Outer function');

  void innerFunction() {
    print('Inner function');
  }

  innerFunction();
}

//13 higher order function
void higherOrderFunction(int x, int y, Function(int, int) operation) {
  print(operation(x, y));
}

//15 how to use return key word in dart
// Function definition
void greet3(String name) {
  if (name.isEmpty) {
    print('Name is empty, cannot proceed.');
    return; // Exit the function early
  }
  print('Hello, $name!');
}

//16 function signature, ma
int add(int a, int b) {
  return a + b;
}

//17  making function in dart asynchronous
Future<void> myAsyncFunction() async {
  // Asynchronous code that might take time to execute
  await Future.delayed(Duration(seconds: 1));
  print('Async operation complete');
}

//18 use of async , await and future
// Asynchronous function that simulates fetching data from an API
Future<int> fetchData() async {
  // Simulate a delay of 2 seconds (asynchronous operation)
  await Future.delayed(Duration(seconds: 2));

  // Return a value after the delay
  return 42;
}

//19 calling function defined in other dart file involves importing the file into the file in which you want call it,
// and then call it as i did in the main method.