# TIL
2021-07-28

Chapter3
keyword : Const 

        - It prevents uninteded modifications of member variables.
        - marking a method const means that it's not to modify the current object's state within const method(raed-only method).
        - the const member variables cannot be modified after their initialization.
 
initialization with auto

        auto the_answer { 42 };            // int
        auto foot { 12L };                 // long
        auto rootbeer { 5.0F };            // float
        auto cheeseburger { 10.0 };        // double
        auto politifact_claims { false };  // bool
        auto cheese { "string" };          // char[7]
        auto year { 2019 };              // int
        auto& year_ref = year;           // int&
        const auto& year_cref = year;    // const int&
        auto* year_ptr = &year;          // int*
        const auto* year_cptr = &year;   // const int*
  
 Chapter4
 
 Object's Storage duration
 
               -object's storage duration begins when the object is allocated and ends when the object is delalocated.
               
  1.Automatic storage duration
  
        automatic object is allocated at the beginning of an enclosing code block, and it's deallocated at the end
  
  2.Static storage duration
  
        static object is allocated when the program starts and deallocated when the program stops.
    
  3.Dynamic storage duration
  
         objects with dynamic storage duration are allocated and deallocated on request.
    
