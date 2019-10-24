/* This program calculates the integer quotient of two positive numbers.
For instance, quotient(9, 4) returns 2, and quotient(5, 3) returns 1
*/

function quotient(a, b) {
  let r = a % b;
  let c = a - r;
  console.log('a is ' + a)
  console.log('b is ' + b)
  console.log('The quotient is ' + c/b)
}

function testQuotient() {
  console.log('The quotient of 9 and 4 is 2')
  quotient(9, 4);
  
  console.log('The quotient of 5 and 3 is 1')
  quotient(5, 3);
}

testQuotient();
