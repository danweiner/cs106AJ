/**
 * Daniel Weiner
 * 
 * Exercises from Eric Roberts' Textbook
 * for CS 106AJ
 * 
 * This program fills any size world with a 
 * checkerboard of beepers
 **/
function main(){
   // Start by laying one row east to west
   // to avoid off by one bug
   putChecker();
   
   // Left will be clear if there are more rows to fill
   while (leftIsClear()) {
      reorientToWest();
      // Karel puts row of beepers from west to east
      putChecker();
      if (rightIsClear()) {
         reorientToEast();
         putChecker();
      } else {
         // in a world with an even number of rows
         // karel turns around so left becomes blocked
         turnAround();
      }
      
   }
   
}

// Karel is facing east against a wall
// Karel will be one street up facing west 
// one spot away from the east wall
function reorientToWest() {
   turnLeft();
   checkIfEvenOrOdd();
   
}

// Karel is facing west against a wall
// Karel will be one street up facing east
function reorientToEast() {
   turnRight();
   move();
   turnRight();
   
}

function turnRight() {
   turnLeft();
   turnLeft();
   turnLeft();
}
   
function turnAround() {
   turnLeft();
   turnLeft();
}

// This puts one beeper on every other corner
function putChecker() {
   putBeeper();
   while (frontIsClear()) {
      move();
      if (frontIsClear()) {
         move();
         putBeeper();
      }
   }  
}

// check for beeper on corner
// add one extra move when odd number of streets
// need to move away from wall when world is 9x9

function checkIfEvenOrOdd() {
   if (beepersPresent()) {
      move();
      turnLeft();
      move();
   } else {
      move();
      turnLeft();
   }
   
}
