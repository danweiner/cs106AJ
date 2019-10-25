/*
This function takes a string and adds double quotes at the beginning and end.

Examples:
quote("Hello")
"Hello"

quote("Fahrenheit " + 11*41)
"Fahrenheit 451"

quote("   ")
"   "
*/

function quote(str) {
  console.log("\"" + str + "\"")
}

function testQuote() {
  console.log("This should print \"Hello\" ")
  quote("Hello")
  
  console.log("This should print \"Fahrenheit 451\" ")
  quote("Fahrenheit " + 11*41)
}
  
  


testQuote()