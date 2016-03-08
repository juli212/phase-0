/*
Gradebook from Names and Scores

I worked on this challenge with Hanna.
This challenge took me 2 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.


// var gradebook = {
//   Joseph: {testScores: scores[0]},
//   Susan: {testScores: scores[1]},
//   William: {testScores: scores[2]},
//   Elizabeth: {testScores: scores[3]},
//   addScore: function (student_name, test_score) {
//     gradebook[student_name].testScores.push(test_score)
//   },
//   getAverage: function (student_name){
//     return average(gradebook[student_name].testScores);
//   },
// };

// var average = function (student_grades){
//   var total = 0;
//   for (var i=0; i < student_grades.length; i++) {
//     total = total + student_grades[i];
//   }
//   return total/student_grades.length;
// };


// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  addScore: function (name, score) {
    gradebook[name].testScores.push(score)
  },
  getAverage: function (name){
    return average(gradebook[name].testScores);
  },
};

var average = function (grades){
  var total = 0;
  for (var i=0; i < grades.length; i++) {
    total = total + grades[i];
  }
  return total/grades.length;
};




// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
  It was pretty simple for us to add the functions. We had problems defining the functions with the correct array values though. It was tricky at first to point our variables to the right level of nested values inside the gradebook object but once we figured that out, our solution became pretty easy to figure out.

How did you iterate over nested arrays in JavaScript?
  We used a simple for loop in order to calculate the average grades and the only difficulty we had for that was making sure we had the correct object (an array) as the argument/input when we called the average function through the getAverage function.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  No, not really. All of our solutions were pretty basic and we did not find any new functions that really helped us at all. It was interesting looking at a few different ways to access the nested array values since that is what we struggled with most.
*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)