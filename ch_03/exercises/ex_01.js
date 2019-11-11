/*
Daniel Weiner

This function returns the max of two numerical values.  It assumes that the inputs are numbers (ints or floats).

If the numbers are the same, that number is returned:

Example: max1(2, 2) --> 2

*/

// Implementation using an if statement
function max1(x, y) {
  if (x >= y) {
    return x;
  } else {
    return y;
  }
}

// One line implementation using ?: operator
function max2(x, y) {
  return (x > y) ? x : y;
}

function testOfMax() {
  console.log('The max of 3 and 5 is 5')
  console.log(max2(3, 5))
  console.log()
  
  console.log('The max of 2.0 and 1 is 2')
  console.log(max2(2.0, 1))
  console.log()
  
  console.log('The max of 3 and 3 is 3')
  console.log(max2(3, 3))
}

testOfMax()
