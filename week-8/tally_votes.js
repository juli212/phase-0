// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Andrew:
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution

// function vote_tally(votes, voteCount) {
//   for (var voter in votes){
//     for (var position in votes[voter]) {
//       var candidate = votes[voter][position]  
//   if (candidate in voteCount[position]) {
//       voteCount[position][candidate] +=1;
//     } 
//   else {
//   voteCount[position][candidate] = 1;
//         }
//     } 
//   }
// return voteCount;

// }
// vote_tally(votes, voteCount);
// console.log(voteCount);

// function find_officers(officers, voteCount) {
//   for (var position in voteCount) {
//     var mostVotes = 0;
//     for (var candidate in voteCount[position]) {
//       var numVotes = voteCount[position][candidate];
//       if (numVotes > mostVotes) {
//         mostVotes = numVotes;
//         officers[position] = candidate;
//       }
//     }
//   }
// return officers;
// }
// find_officers(officers, voteCount);


// __________________________________________
// Refactored Solution


function vote_tally(votes, voteCount) {
  for (var voter in votes){
    for (var position in votes[voter]) {
      var candidate = votes[voter][position]  
  if (candidate in voteCount[position]) {
      voteCount[position][candidate] +=1;
    } 
  else {
  voteCount[position][candidate] = 1;
        }
    } 
  }
return voteCount;

}
vote_tally(votes, voteCount);


function find_officers(officers, voteCount) {
  for (var position in voteCount) {
    var mostVotes = 0;
    for (var candidate in voteCount[position]) {
      var numVotes = voteCount[position][candidate];
      if (numVotes > mostVotes) {
        mostVotes = numVotes;
        officers[position] = candidate;
      }
    }
  }
return officers;
}
find_officers(officers, voteCount);


// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
  It confuses me a lot. I really miss Ruby iterations where I can use index numbers to access values much more easily... I do think that once I have more practice with nested iterating in JavaScript, it will become easier for me!

Were you able to find useful methods to help you with this?
  We did not really find new methods. We just used the for...in... loops which worked amazingly well for us!

What concepts were solidified in the process of working through this challenge?
  I definitely understand for...in... loops better now. I do not completely have a grasp on them but I can work through them and when I give them a lot of concentration, they definitely make sense. Just need more practice with them to be comfortable!
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)