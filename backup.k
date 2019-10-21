/**
 * Daniel Weiner
 * 
 * Exercises from Eric Roberts' Textbook
 * for CS 106AJ
 * 
 * This program allows Karel to backup one space
 * if the corner behind Karel is free
 **/
function main(){
   move();
   move();
   move();
   // Karel should end up on corner 2
   backup();
  
   // This function moves Karel one spot back
   // facing the same direction 
   
}

function backup() {
   turnAround();
   if (frontIsClear()) {
      move();
   }
   turnAround();
}
   
function turnAround() {
   turnLeft();
   turnLeft();
}
