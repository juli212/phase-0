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
  
  var num = Math.random();
  if (num <= 0.25) {
    sparrow.posX += 3;
  }
  else if (0.25 < num <= 0.50) {
    sparrow.posX -= 3;
  }
  else if (0.50 < num <= 0.75) {
    sparrow.posY += 3;
  }
  else if (0.75 < num <= 1.0) {
    sparrow.posY -= 3;
  }
   
  console.log("The sparrow moved to " + sparrow.posX + ", " + sparrow.posY + ".");
  console.log("The mouse is still at " + mouse.posX + ", " + mouse.posY + ".");
  console.log("Your cat moved to " + cat.posX + ", " + cat.posY + ".");
  
  
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
cat.run("up");
cat.run("up");
cat.run("up");


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//