// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var juli = "Julia is awesome!"
console.log("Didn't you know, " + juli)

prompt("What is your favorite food?", "fav food here...")
alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board. LOOPING TRIANGLE:

var tri ="#" ;
while (tri.length < 8 ) {
  console.log(tri);
  tri = tri + "#";
}

// Functions

// Complete the `minimum` exercise.

var min = function(one, two) {
  if (one < two) {
  console.log(one)
  }
  else {
  console.log(two)
  }
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "julia",
  age: 26,
  "favorite foods": ["pizza", "oranges", "chocolate"],
  quirk: "I like chasing cats"
};