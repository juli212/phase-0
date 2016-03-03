// JavaScript Olympics

// I paired with Mike on this challenge.

// This challenge took me <1 hours.


// Warm Up




// Bulk Up

var athletes = [
  {name: "Michael Phelps", event: "swimming"},
  {name: "Tyson Gay", event: "100m"},
  {name: "Jamacain Bobsled Team", event: "Bobsled"}
];


var winners = function(athletes){
  for (var i = 0; i < athletes.length; i++) {
  athletes.win = console.log(athletes[i].name + " has won the " + athletes[i].event + " event!") }
};

// Driver code
winners(athletes)

// Jumble your words

var reverse = function(string) {
  console.log(string.split("").reverse().join(""));
};

reverse("!sdrow ruoy elbmuJ")


// 2,4,6,8

var even_nums = function(num_array) {
  var evens = []
  for (var i = 0; i < num_array.length; i++) {
    if (num_array[i] % 2 === 0) {
      evens.push(num_array[i]);
    }
  }
      console.log(evens);
};

even_nums([1, 2, 3, 4, 5, 6])

// "We built this city"


function Athlete(name, age, sport, quote) {
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
};


// driver code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
	Mostly getting comfortable with syntax and some loop-writing. Iterating over arrays in particular makes more sense the more I write loops to do it.
What are constructor functions?
	Constructor functions are functions that define an object with some property values. They allow multiple instances of an object to be created and modified while the script is running. The constructor object also uses this.property_name to define a property.
How are constructors different from Ruby classes (in your research)?
	When using constructors, there is no need to initialize or have any equivalent to that. Looks like properties are also avaiable without having an equivalent to instance variables.

	Source I really liked:
	http://nishacodes.tumblr.com/post/74145415546/javascript-vs-ruby-object-oriented-programming

*/
