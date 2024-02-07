import 'hello.dart';

import '../lib/me.dart';

void main() {
  print('Solution to Exam 3 Foundation Test');

  hello('Samuel'); // example of calling a function defined in another Dart file
  sayMyName(); // example of calling a function defined in another Dart file directory

  int result = operateOnNumbers(3, 5, sum); // example of using a higher-order function
   print('Result: $result');


  print('Before calling the asynchronous function'); // example of calling an asynchronous function
  // Calling the asynchronous function
  myAsyncFunction();
  print('After calling the asynchronous function');
}


/*

1. What is a function in Dart? A function in Dart is a reusable block of code that performs a specific task. 
It allows you to organize your code into logical units, making it easier to read, understand, and maintain.
Here's a simple example:

*/

double calculateArea(double length, double width) {
  return length * width;
}


/*

2. How do you declare a function in Dart? We declare a function using the `function` return type followed by the function's name, parameters (if any),
 and the function body enclosed in curly braces `{}`. Here's a simple example:

*/
void greet() {
  print('Hello, world!');
}


/*

3. What is the purpose of the main() function in Dart? The `main()` function in Dart is the entry point of a Dart program. 
It is where the execution of the program begins. Dart programs must have a `main()` function as the starting point.
Check the main function in the first code snippet above

*/

/*

4. Explain the difference between a named function and an anonymous function.
A named function is a function that has a specific name assigned to it,
allowing you to call it by its name. An anonymous function, on the other hand, is a function without a name. 
Anonymous functions are often used as arguments to other functions or as callbacks.

*/


/*

5. What is a return type in Dart functions?
The return type in Dart functions specifies the type of value that the function will return after its execution. 
It can be any valid Data type or `void` if the function doesn't return anything.  For example:

*/

int add(int a, int b) {
  return a + b;
}

/*

6. How can you pass parameters to a Dart function?
You can pass parameters to a Dart function by including them inside the parentheses `()` in the function declaration.
 Parameters are variables that store the values passed to the function when it is called. For example:

*/

void greeted(String name) {
  print('Hello, $name!');
}

/*

7. Describe the difference between positional and named parameters.
Positional parameters in Dart are passed based on their positions in the function call.
Named parameters, on the other hand, are passed by specifying the parameter name along with the value. 
Named parameters are enclosed in curly braces `{}` in the function declaration. 

*/


/*

8. What is the significance of the arrow (=>) syntax in Dart functions?
The arrow `=>` syntax in Dart functions is used for concise one-line function bodies. 
It is a shorthand way to write functions that contain a single expression. 
The expression on the right side of the arrow is evaluated and returned as the result of the function. For example:

*/

int square(int x) => x * x;


/*

9. How do you define default parameter values in Dart functions?
You can define default parameter values in Dart functions by assigning a default value to the parameter in the function declaration.
If no value is provided for that parameter when the function is called, the default value will be used. For example:

*/

void greetWithName({String name = 'World'}) {
  print('Hello, $name!');
}


/*

10. Explain the concept of optional parameters in Dart functions.
Optional parameters in Dart functions allow you to define parameters that are not mandatory to provide when calling the function. 
They can be either positional or named parameters. Optional parameters are useful when you want to provide flexibility in function calls. For example:

*/

void greeting(String name, [String? greeting]) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}


/*
11. What is the purpose of the void keyword in Dart functions?
The `void` keyword in Dart functions is used to indicate that the function does not return any value. 
Functions with a return type of `void` are called "void functions" and are used when the function does not need to return any specific value.
For example:

*/

void printMessage(String message) {
  print(message);
}

/*

12. How can you define a function inside another function in Dart? What is this called?
This is called a "nested function." 
Nested functions have access to the variables and parameters of the outer function, allowing for more modular and encapsulated code.
For example:

*/

void outerFunction() {
  void innerFunction() {
    print('Inside inner function');
  }
  
  innerFunction(); // Call the nested function
}

/*

13. What is a higher-order function in Dart?
A higher-order function in Dart is a function that takes one or more functions as arguments or returns a function as its result.
In other words, it operates on other functions by taking them as arguments or returning them as results. 
Higher-order functions are a powerful concept in Dart, enabling functional programming paradigms.
example:

*/

int operateOnNumbers(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

int sum(int a, int b) {
  return a + b;
}

// void main() {
//   int result = operateOnNumbers(3, 5, sum);
//   print('Result: $result'); // Output: Result: 8
// }


/* 

14. Explain the difference between functions and methods in Dart.
In Dart, a function is a standalone block of code that performs a specific task, while a method is a function that is associated with a class or an object. 
Methods are essentially functions that belong to a class and can access the properties and other methods of that class.

*/


/*

15. How do you use the return keyword in Dart functions?
In Dart functions, the `return` keyword is used to exit the function and return a value (if the function has a return type other than `void`). 
It is followed by the value that is to be returned. 
Once the `return` statement is executed, the function terminates and control is returned to the caller along with the specified value.

*/


/*
16. What is a function signature, and why is it important?
A function signature in Dart refers to the combination of a function's name, parameter types, and return type.
 It uniquely identifies a function and defines its interface. Function signatures are important because they specify the contract of a function, 
 including the types of parameters it accepts and the type of value it returns.

*/


/*

17. How can you make a function in Dart asynchronous?
You can make a function in Dart asynchronous by using the `async` keyword in the function declaration.
An asynchronous function allows you to perform operations asynchronously, without blocking the execution of other code.
Asynchronous functions are often used when dealing with I/O operations or operations that may take some time to complete.
example:

*/

// An example asynchronous function
Future<void> myAsyncFunction() async {
  print('Inside the asynchronous function');
  await Future.delayed(Duration(seconds: 2));
  print('After waiting for 2 seconds');
}

/*

18. Describe the use of the async, await, and Future keywords in asynchronous functions.
In Dart, the `async` keyword is used to mark a function as asynchronous, allowing it to use the `await` keyword. 
The `await` keyword is used to pause the execution of an asynchronous function until a Future is resolved, 
enabling sequential asynchronous code execution.
The `Future` keyword represents a potential value or error that will be available at some time in the future.

*/


/*

19. How do you call a function defined in another Dart file?
To call a function defined in another Dart file, you need to import that file using the `import` keyword.
 Once the file is imported, you can call the function by its name as usual. For example:

*/

// Importing

 //the file where the function is defined ==> import 'hello.dart';


// Calling the function from the imported file ==> hello('Samuel');
//check the main function in the first code snippet above
