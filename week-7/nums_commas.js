// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kevin!

// Pseudocode:
/*
input: a number with no comma placed
output: the number with a comma every three numbers
steps:
Define a function that takes a number as an argument;
Turn number into a string ;
if length of number is less than 3 return the number 
else 
start coding 
reverse the string and place comma ever 4 spots 
reverse again and return
*/

// Initial Solution

// function separateComma(number) {
//   if (number.length < 4) { 
//     console.log(number);
//   }
//   else {
//     new_num = number.toString().split("").reverse();
//       if (new_num.length < 6) {
//         new_num.splice(3,0,",");
//         console.log(new_num.reverse().join(""))
//       }
//         else if (new_num.length <= 9) {
//         new_num.splice(3,0,",");
//         new_num.splice(7,0,",");
//         console.log(new_num.reverse().join(""))
//        }
//        	else if (new_num.length <= 12) {
//        		new_num.splice(3,0, ",");
//        		new_num.splice(7,0, ",");
//        		new_num.splice(11,0, ",");
//        		console.log(new_num.reverse().join(""))
//        	}
//   }
// }


// Refactored Solution

// function separateComma(number) {
//   if (number.length < 4) { 
//     console.log(number);
//   }
//   else {
//     new_num = number.toString().split("").reverse();
//       if (new_num.length < 6) {
//         new_num.splice(3,0,",");
//         console.log(new_num.reverse().join(""))
//       }
//         else if (new_num.length <= 9) {
//         new_num.splice(3,0,",");
//         new_num.splice(7,0,",");
//         console.log(new_num.reverse().join(""))
//        }
//        	else if (new_num.length <= 12) {
//        		new_num.splice(3,0, ",");
//        		new_num.splice(7,0, ",");
//        		new_num.splice(11,0, ",");
//        		console.log(new_num.reverse().join(""))
//        	}
//   }
// }

function separateComma(number) {
    var nums = number.toString().split("");
    var i = -3;
    while (nums.length + i > 0) {
        nums.splice(i, 0, ",");
        // Decrement by 4 since we just added another unit to the nums.
        i -= 4;
    }
    console.log(nums.join(''))
}

// separateComma(1234567)
// separateComma(12345678)


// Your Own Tests (OPTIONAL)




// Reflection

/*What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	We definitely discussed how we solved the problem last time with Ruby and ended up using similar logic. It was difficult because we knew there were methods we could use to help us that we just had not learned yet and that was frustrating.

What did you learn about iterating over arrays in JavaScript?
	It is pretty similar to iterating over arrays in Ruby. I read something today that said JavaScript does not have reverse indexing... But we tried it out and it worked so I am not really sure where I read that since it does exist!

What was different about solving this problem in JavaScript?
	I understand iterating better than I did when doing this in Ruby so it made more sense to me. We also thought we could not use reverse indexing for a while so that made it challenging...most of the methods have similar or the same names which is convenient but JavaScript is sneaky since it does not really give great feedback when there is an error. Coderpad also decided to not work which did not help us out at all. I am also not sure that subtracting the index number from the array length in the while loop would work in Ruby since Ruby cares about things like having the correct number of objects in arrays.

What built-in methods did you find to incorporate in your refactored solution?
	We used .spilce() inside a while loop to split the number array and add in a comma ever 4th character in our number array. It was a pretty simple solution once we figured out the logic for subtracting the index number from the array length.
*/