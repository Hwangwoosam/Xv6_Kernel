# TIL

Dynamic arrays
-	arrays with dynamic storage duration.
Allocation
Ex) new MyType[n_elements] { init-list }

    int* my_int_array_ptr = new int[100];
Deallocation
delete[] my_int_array_ptr

Memory leaks
-	memory that is no longer needed by your program isn’t released.
Exceptions
-	types that communicate an error condition. When an error condition occurs, user throw an exception.
-	When an exception is in flight, the program stops normal execution and searches for an exception handler that can manage the in-flight exception.
 Logic error
- domain_error : related to valid input range.
- invalid_argument : unexpected arguments
- length_error : violate a maximum size constraint. 
- out_of_range : some value isn’t in an expected range.
Runtime error
- system_error : operating system encountered some error.
- overflow_error && underflow_error : arithmetic overflow and underflow.
Call stack
-	It is a runtime structure that stores information about active functions.  


Copy semantics
-	It is “the meaning of copy”.

Two ways to copy an object
1.	Copy constructors
- copy construction creates a copy and assigns it to a brand-new object.
2.	Copy assignment (operator= )
Copy guidelines
1.	Correctness : class invariants are maintained.
2.	Independence : after copy assignment or copy construction, the original object and the copy shouldn’t change each other’s state during modification.
3.	Equivalence : the original and the copy should be the same

Move semantics
-	It is move’s corollary to copy semantics, and it requires that after object y is moved into an object x.
1.	Move constructor
2.	Move assignment
Value categories
1.	Generalized Ivalue (glvalue)
2.	Pure rvalue (prvalue)
3.	Expiring value (xvalue)
4.	lvalue(Left value) : it is any value that has a name.
5.	rvalue(Right value) : it is anything that isn’t an lvalue.


Chapter 5
Polymorphic code
-	it is code user writes once and can reuse with different types.
Interfaces
-	it defines function signatures that all implementations of the interface agree to support.
-	Implementation is code or data that declares support for an interface.
Object composition
-	It is a design pattern where a class contains members of other class types.
