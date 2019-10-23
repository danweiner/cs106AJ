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
   putBeeperAtMidPoint();
}

function putBeeperAtMidPoint() {
   findMidPoint();
   placeMidBeeper();
}

// Moves Karel to center corner of first street
function findMidPoint() {
   putBeeperOnEveryOtherCorner();
   turnAround();
   makeLineOfBeepersFromEdgeToMidpoint();
   turnAround();
   collectLineOfBeepers();
   backup();
}

// Puts a beeper on every other corner
// Karel finished on east edge facing east
function putBeeperOnEveryOtherCorner() {
   putBeeper();
   while (frontIsClear()) {
      move();
      if (frontIsClear()) {
         move();
         putBeeper();
      }
   }
}

// Makes a line of beepers from east edge to center corner
function makeLineOfBeepersFromEdgeToMidpoint() {
   if (noBeepersPresent()) {
      putBeeper();
   }
   
   moveToEndOfBeeperLine();
   // While picking up beepers
   while (frontIsClear()) {
      moveToNearestBeeper();
      buildBeeperWall();
   }
}

function turnAround() {
   turnLeft();
   turnLeft();
}

// Moves Karel from a corner with no beepers to a 
// corner with a beeper
function moveToNearestBeeper() {
   while (noBeepersPresent() ) {
      if (frontIsClear()) {
         move();
      } else {
         // facing a wall with no beepers
         turnAround();
         moveToWall();
      }
   }
}

function moveToEndOfBeeperLine() {
   while (beepersPresent()) {
      if (frontIsClear()) {
         move();
      } 
   }
}


function buildBeeperWall() {
   // only collect beeper if facing west
   if (rightIsClear()) {
      turnAround();
      pickBeeper();
      moveToBeeperWall();
      depositCurrentBeeper();
      
   }
   
}

function moveToBeeperWall() {
   moveToNearestBeeper();
}

function depositCurrentBeeper() {
   turnAround();
   move();
   putBeeper();
   move();
}

function moveToWall() {
   while (frontIsClear()) {
      move();
   }
}

function backup() {
   turnAround();
   if (frontIsClear()) {
      move();
   }
   turnAround();
}

function collectLineOfBeepers() {
   if (noBeepersPresent()) {
      move();
   }
   while (beepersPresent()) {
      pickBeeper();
      if (frontIsClear()) {
         move();
      }
      
   }
}

function placeMidBeeper() {
   if (leftIsBlocked()) {
      turnAround();
   }
   putBeeper();
}

