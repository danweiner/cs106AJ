/* Daniel Weiner
This program is based off of an example from the textbook.

It prints a right-aligned table of factorials from 1 up to a specied upper limit.
*/

/*
* Returns a string in which value appears at the right edge of a field that is at least the specified width. If the value does not fied in that field, the returned string will be longer than the specified width.
*/

function alignRight(value, width) {
  let s = '' + value;
  while (s.length < width) {
    s = ' ' + s;
  }
  return s
}

/* Computes factorial of n, which is the 
* product of 1 through n
*/

function fact(n) {
  let total = 1;
  for (let i = 2; i <= n; i++) { 
    total *= i;
  }
  return total
}

/*
* Prints a table of factorials, using the alignRight  
* function to format the numbers
*/
function factorialTable() {
  let maxFactorial = 10;
  let numWidth = 3;
  let factorialWidth = 8;
  
  for (let i = 1; i <= maxFactorial; i++) {
    console.log(alignRight(i, numWidth) + '! =' + 
                alignRight(fact(i), factorialWidth));
  } 
}

factorialTable()
