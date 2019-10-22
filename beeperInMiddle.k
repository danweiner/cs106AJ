/**
 * Daniel Weiner
 * 
 * This program places a beeper in the center of
 * first street.
 * 
 * In worlds of length 8 it leaves the beeper on corner
 * 4.
 * 
 * In worlds of length 4 it leaves the beeper on corner
 * 3.
 **/
function main(){
   putChecker();
   turnAround();
   // even length worlds, put beeper at east end
   if (noBeepersPresent()) { 
      putBeeper();
   }
   
   moveToFreeSpace();
   
   while (frontIsClear()) {
      moveToBeeper();
      buildBeeperWall();
   }
   
   turnAround();
   
   // in small worlds (3*3, 4*4, karel is on an empty 
   // corner on 1, 1.  move to a corner with a beeper
   if (noBeepersPresent()) {
      move();
   }
   pickUpLineOfBeepers();
   backUp();
   putBeeper();
   
   
   
   
}


// put a beeper on every other corner
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

// move from end of block back to 1, 1, facing east
function returnHome() {
   turnAround();
   moveToWall();
   turnAround();
}

function turnAround() {
   turnLeft();
   turnLeft();
}

function moveToWall() {
   while (frontIsClear()) {
      move();
   }
}

// moves karel to a corner without a beeper on it
function moveToFreeSpace() {
   while (beepersPresent()) {
      move();
      
   }
}

// moves karel to nearest beeper (if beepers left in world)
// otherwise places one beeper (to exit loop)
function moveToBeeper() {
   while (noBeepersPresent()) {
      if (frontIsClear()) {
         move();
      } else {
         turnAround();
         moveToWall();
      }
   }
}

// Karel is standing on a beeper facing east
// karel will build a line of beepers starting at 1, 1
function buildBeeperWall() { 
   if (leftIsBlocked()) {
      pickBeeper();
      turnAround();
      moveToBeeper();
      turnAround();
      move();
      putBeeper();
      move();
   } 
   
}

function pickUpLineOfBeepers() {
   
   while (beepersPresent() ) {
      pickBeeper();
      if (frontIsClear() ) {
         move();
      }
   }
}

function backUp() {
   turnAround();
   if (frontIsClear()) {
      move();
   }
   
}
