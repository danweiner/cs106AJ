/*
Daniel Weiner

This function returns the max of three numerical values.  It assumes that the inputs are numbers (ints or floats).

If the numbers are the same, that number is returned:

Example: max3(2, 2, 2) --> 2

Example: max3(1, 0, 5) --> 5

*/

// Implementation using an if statement
function max3(x, y, z) {
  if (x >= y && x >= z) {
    return x;
  } else if (y >= z) {
    return y;
  } else {
    return z;
  }
}

// One line implementation using ?: operator


function testOfMax() {
  
  // Testing all same
  console.log('The max of 5, 5, and and 5 is 5')
  console.log(max3(5, 5, 5))
  console.log()
  
  // Testing y and z equal - testing y is biggest
  console.log('The max of 1, 2, and and 2 is 2')
  console.log(max3(1, 2, 2))
  console.log()
  
  // testing x is biggest
  console.log('The max of 3.0 and 1, and 2 is 3')
  console.log(max3(3.0, 1, 2))
  console.log()
  
  // testing z is biggest
  console.log('The max of 1, -3, and 8 is 8')
  console.log(max3(1, -3, 8))
}

testOfMax()
