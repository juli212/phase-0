// PSEUDOCODE
// input: integer
// output: a string saying your number is or is not a fibonacci number.
// Define function fibonacci that takes an integer as argument
	// IF the integer is less than 0, it is not a fib number
	// ELSE IF the number = 0 or 1, it is a fib number
	// ELSE IF the number squared then multiplied by 5 plus or minus 4 is a proper square root, return true, it is a fib number.
	// ELSE return false, not a fib number


// function fibonacci(num) {
//   if (num < 0) {
//     console.log("negative numbers are not fibs");
//     return false;
//   }
//   else if (num == 0 || num == 1) {
//     console.log("1 and 0 are fibs!");
//     return true;
//   }
//   else if (Math.sqrt((5 * num * num) + 4) === Math.floor(Math.sqrt((5 * num * num) + 4)) ||     
//            Math.sqrt((5 * num * num) - 4) === Math.floor(Math.sqrt((5 * num * num) - 4))) {
//     console.log("your number is a fib!");
//     return true;
//   } 
//   else
//     console.log("sorry, your number is not a fib");
//     return false;
// }

// Refactor:

function fibonacci(num) {
  var five_squ = 5 * num * num
  if (num < 0) {
    console.log("negative numbers are not fibs");
    return false;
  }
  else if (Math.sqrt(five_squ + 4) === Math.floor(Math.sqrt(five_squ + 4)) ||     
           Math.sqrt(five_squ - 4) === Math.floor(Math.sqrt(five_squ - 4))) {
    console.log("your number is a fib!");
    return true;
  } 
  else
    console.log("sorry, your number is not a fib");
    return false;
};

// Reflect:
/*
What concepts did you solidify in working on this challenge?
	I got some practice using different Math functions and making sure not to repeat unnecessary parts of code. With the formula I used, I could take out one of my else if clauses and shorten the code for better readability.

What was the most difficult part of this challenge?
	Because javascript does not care much about exactness when it comes to numbers, it took me a few minutes to figure out how to check to see if the squareroot was an integer or a float.
	I also decided to use a different formula this time just to see how the logic would be different. That was slightly challenging because The other way makes more sense to me even though I think in terms of very large numbers, this second way is better because I will not be adding ridiculously long numbers to an array.

Did you solve the problem in a new way this time?
	Yes, I used a formula I found rather than creating an array and pushing numbers to the array.

Was your pseudocode different from the Ruby version? What was the same and what was different?
	Since my technique was more mathematical this time, my pseudocode was very different. I approached this from a formulaic point of view, rather than creating an array and pushing numbers into it until they were larger than (or equal to) the given argument.
*/