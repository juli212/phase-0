// Grocery List Pseudocode:

// New list:
	// Define empty object groceryList
var groceryList = {};

// Add item w. Quantity to list:
	// Define function addItem that adds an item to groceryList object:	
		// IF the item already exists in groceryList, increase the value,
		// ELSE IF the item does not exist, add item as a property key and the quantity as the property value of the groceryList object. 

function addItem(new_item, qty) {
  groceryList[new_item] = qty;
};
// remove item from list:
	// Define function removeItem that takes a string as input and delets the property that matches. If it does not match, nothing is removed.

function removeItem(remove_this_item) {
  delete groceryList[remove_this_item];
};
// update quantity for items in list:
	// Define function updateItem that takes an item and a quantity as arguments
		// If the object property equals the argument item, replace the property value with the argument quantity.

function updateItem(update_item, new_qty) {
  groceryList[update_item] = new_qty;
};

//** can combine the add item and update item into one function!**

//print the list:
	// define a function printList that takes an object as an argument and prints each property of the grocerlyList object and corresponding value on one line.

function printList() {
  console.log("  GROCERY LIST");
  console.log("~~~~~~~~~~~~~~~~");
  for (var item in groceryList) {
    console.log("  " + item + ": " + groceryList[item]);
  }
};

//REFACTOR:

var groceryList = {};

//combined my add and update functions:
function addUpdateItem(item, qty) {
  groceryList[item] = qty;
};

function removeItem(item) {
  delete groceryList[item];
};

function printList() {
  console.log("  GROCERY LIST");
  console.log("~~~~~~~~~~~~~~~~");
  for (var item in groceryList) {
    console.log("  " + item + ": " + groceryList[item]);
  }
};

// Reflect:
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
	Definitely a good reminder for passing information and how it differs from Ruby. In Ruby we would have needed a class to write this or we would need to set the output of each method equal to another variable that the following method could use but in JS we do not have to do that. Good general review of basic javascript objects and constructors.

What was the most difficult part of this challenge?
	I overthought it a lot at the beginning and tried to use for...in... whih was very unnecessary. Then I realized than if the property exists, you can just set it equal to a new value and it will overwrite the previous value which is very very simple.

Did an array or object make more sense to use and why?
	I used an object since I could set each object property key to a grocery item and the value to its quantity. I think an array would have been a little more complicated.
*/