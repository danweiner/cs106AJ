/*
* Daniel Weiner

This program produces a multiplication table where each number is aligned right within a specified width.  The alignRight function is from the factorialTable program.
*/

function multiplicationTable() {
  let FIELD_WIDTH = 5;
  
  for (let i = 1; i <= 10; i++) {
    let s = '';
    for (let j = 1; j <= 10; j++) {
       s += alignRight(i*j, FIELD_WIDTH);
      
    }
    console.log(s);
  }
}

multiplicationTable()
