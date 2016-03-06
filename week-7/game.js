 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: You are a hungry cat. You want to catch some animals (goldfish, sparrow, mouse). Once you have satisfied your hunger, you win! But must avoid the rat poision!
// Goals: Get hunger level to 0 without eating the rat poison.
// Characters: cat
// Objects: cat (position, hunger, sick = hunger +4), Sparrow(hunger -3), goldfish(hunger -2), mouse(hunger -1), rat poison(sick = true)
// Functions: runUp, runDown, runLeft, runRight, pounce (10 in random direction)



// Pseudocode
// Declare object "cat" with following properties: position, hunger at 7, sick is false.
// Add run method to move cat up, down, left, right 5.
// Add pounce method to move cat 10 in random direction.
// Declare object "sparrow" with property -4 hunger an random position
// Declare object "goldfish" with property -2 hunger and random position
// Declare object "mouse" with property -2 and random position
// Declare object "rat poison" with property random position
// While cat hunger is GREATER THAN 0,
	// Move cat 
		//IF position equals animal position. If so, subtract from hunger and remove animal. 
		// IF position equals rat poison position, cat sick = true and game is over
	// When cat hunger is 0, you win!



// Initial Code


var cat = {
  posX: 0,
  posY: 0,
  hunger: 5,
  mouse: false,
  sparrow: false,
  goldfish: false,

run: function(direction) {
  if (direction === "up") {
    cat.posY += 5;
  }
  else if (direction === "down") {
    cat.posY -= 5;
  }
  else if (direction === "left") {
    cat.posX -= 5;
  }
  else if (direction === "right") {
    cat.posX += 5;
  }
  
  var num1 = Math.random();
  if (num1 <= 0.25) {
    sparrow.posX += 4;
  }
  else if (0.25 < num1 <= 0.50) {
    sparrow.posX -= 4;
  }
  else if (0.50 < num1 <= 0.75) {
    sparrow.posY += 4;
  }
  else if (0.75 < num1 <= 1.0) {
    sparrow.posY -= 4;
  }
  
  var num2 = Math.random();
  if (num2 <= 0.25) {
    goldfish.posX += 3;
  }
  else if (0.25 < num2 <= 0.50) {
    goldfish.posX -= 3;
  }
  else if (0.50 < num2 <= 0.75) {
    goldfish.posY += 3;
  }
  else if (0.75 < num2 <= 1.0) {
    goldfish.posY -= 3;
  }
  
  var num3 = Math.random();
    if (num3 <= 0.25) {
    mouse.posX += 1;
  }
  else if (0.25 < num3 <= 0.50) {
    mouse.posX -= 1;
  }
  else if (0.50 < num3 <= 0.75) {
    mouse.posY += 1;
  }
  else if (0.75 < num3 <= 1.0) {
    mouse.posY -= 1;
  }
   
  console.log("The sparrow flew to " + sparrow.posX + ", " + sparrow.posY + ".");
  console.log("The goldfish swam to " + goldfish.posX + ", " + sparrow.posY + ".");
  console.log("The mouse is at " + mouse.posX + ", " + mouse.posY + ".");
  console.log("Your cat moved to " + cat.posX + ", " + cat.posY + ".");
  console.log("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
  
  if (cat.posX === mouse.posX && cat.posY === mouse.posY) {
    cat.hunger -= 2;
    cat.mouse = true;
    console.log("you caught the mouse! Your hunger decreases by two and is now:" + cat.hunger);
  }
  else if (cat.posX === goldfish.posX && cat.posY === goldfish.posY) {
    cat.hunger -= 3;
    cat.goldfish = true;
    console.log("you caught the fish! Your hunger decreases by two and is now:" + cat.hunger);
  }
  if (cat.posX === sparrow.posX && cat.posY === sparrow.posY) {
    cat.hunger -= 4;
    cat.sparrow = true;
    console.log("you caught the mouse! Your hunger decreases by four and is now: " + cat.hunger);
  }
  
  if (cat.hunger <= 0) {
    console.log("Your cat is no longer hungry! Nice job, you win!!");
  } 
}
};

var mouse = {
  posX: Math.floor((Math.random()*50)+1), 
  posY: Math.floor((Math.random()*50)+1)
}

var goldfish = {
  posX: Math.floor((Math.random()*50)+1), 
  posY: Math.floor((Math.random()*50)+1)
}
var sparrow = {
  posX: Math.floor((Math.random()*50)+1),
  posY: Math.floor((Math.random()*50)+1)
}

cat.run("up");
cat.run("down");
cat.run("left");
cat.run("right");



// Refactored Code

var cat = {
  posX: 0,
  posY: 0,
  hunger: 5,
  mouse: false,
  sparrow: false,
  goldfish: false,

run: function(direction) {
  if (direction === "up") {
    cat.posY += 5;
  }
  else if (direction === "down") {
    cat.posY -= 5;
  }
  else if (direction === "left") {
    cat.posX -= 5;
  }
  else if (direction === "right") {
    cat.posX += 5;
  }

// Rewrite of calculating each position separately:
  function newPos(animals) {
    for(i = 0; i < animals.length; i++) {
      var num = Math.random();
        if (num <= 0.25) {
          animals[1].posX += 4;
          }
        else if (0.25 < num <= 0.50) {
          animals[1].posX -= 4;
          }
        else if (0.50 < num <= 0.75) {
          animals[1].posY += 4;
        }
        else if (0.75 < num <= 1.0) {
          animals[1].posY -= 4;
         }
    }
  }

//This part is the same:
  console.log("The sparrow flew to " + sparrow.posX + ", " + sparrow.posY + ".");
  console.log("The goldfish swam to " + goldfish.posX + ", " + goldfish.posY + ".");
  console.log("The mouse is at " + mouse.posX + ", " + mouse.posY + ".");
  console.log("Your cat moved to " + cat.posX + ", " + cat.posY + ".");
  console.log("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
  
  //tried to refactor this part but failed horribly!:
  if (cat.posX === mouse.posX && cat.posY === mouse.posY) {
    cat.hunger -= 2;
    cat.mouse = true;
    console.log("you caught the mouse! Your hunger decreases by two and is now:" + cat.hunger);
  }
  if (cat.posX === goldfish.posX && cat.posY === goldfish.posY) {
    cat.hunger -= 3;
    cat.goldfish = true;
    console.log("you caught the fish! Your hunger decreases by two and is now:" + cat.hunger);
  }
  if (cat.posX === sparrow.posX && cat.posY === sparrow.posY) {
    cat.hunger -= 4;
    cat.sparrow = true;
    console.log("you caught the mouse! Your hunger decreases by four and is now: " + cat.hunger);
  }
  
  if (cat.hunger <= 0) {
    console.log("Your cat is no longer hungry! Nice job, you win!!");
  }
}
};

// var mouse, goldfish, sparrow refactored (constructor function):
function newAnimal(name) {
	this.name = name;
  this.posX = Math.floor((Math.random()*50)+1);
  this.posY = Math.floor((Math.random()*50)+1);
}
var mouse = new newAnimal("mouse");
var goldfish = new newAnimal("goldfish");
var sparrow = new newAnimal("sparrow");

// Reflection

// What was the most difficult part of this challenge?
	// Coming up with a simple idea. My game ideas get very complicated and overwhelm me when I try to think through how to write the code for it. I ended up simplifying it and leaving out a bunch of things when I went from my pseudocode to actual JavaScript. I also realized at one point that since I had randomly generated numbers, I needed a way to ensure that as they changed they would sometimes become divisible by 5 or no one would ever be able to win.
// What did you learn about creating objects and functions that interact with one another?
	// Creating objects and functions is pretty simple and referring to them is easier for me in JavaScript than when we were using Ruby. I think it would get complicated though if my code was more complex.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// My game did not really require any new methods. I did learn more about using Math.floor and Math.random in a few different ways. I used Math.random to randomly select directions by assigning each direction a range of values but I am wondering if there is a simpler way to choose between 4 options.
// How can you access and manipulate properties of objects?
	// You can just reassign the value of an objects property once a certain condition is met or no longer met. To access property values you use the object_name.property in order to return the value of property.
