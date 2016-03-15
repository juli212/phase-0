// DOM Manipulation Challenge

// I worked on this challenge with Katherine.

// Add your JavaScript calls to this page:

// Release 0:

// Release 1:

document.GetElementById("release-0").className = "done";

// Release 2:

  document.getElementById("release-1").style.display="none";

// Release 3:

  document.getElementsByTagName("h1")[0].innerHTML="I completed release 2.";

// Release 4:

	document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:

	document.getElementsByClassName("release-4").style.fontSize = "2em";

// Release 6:

	var tmpl = document.getElementById("hidden");
	document.body.appendChild(tmpl.content.cloneNode(true));

// Reflect:
//What did you learn about the DOM?
	// The DOM is pretty easy to manipulate with ids, classes, and tags. It seems that its usually better to link an external javaScript file rather than have the javaScript in the lines of HTML for readability and organizational purposes. You can also add and remove tags that already have css linked to it so that you don't even have to add or remove style, you can just remove or add the class or id tag.

// What are some useful methods to use to manipulate the DOM?
	// document.getElement(s)BySOMETHING for whatever tag you are using is very important, and it is important to remember which ones have a singular element vs which ones have the plural elements. For the plural, it is good to know you can use 0-based index to reference a specific one of those elements, a variable if you want to loop through each one, or leave out the index in order to reference all of them at the same time. style and innerHTML are also good methods that are important for changing the style or whatever is inside the html tags.

// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:




// Release 2:




// Release 3:




// Release 4:




// Release 5:
