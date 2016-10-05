// RELEASE 0: FIND THE LONGEST PHRASE

// INPUT: a list of (array) words or phrases.
// STEPS:
//  -Assign an empty string to a variable
//	-Loop through each element in the list
//  -Check the length of word or phrase
//  -IF word or phrase is longer than that stored in variable
// 		-Assign word or phrase to new variable
//  -ELSE
//      -Don't change variable
//  -Return variable containing longest word or phrase
// OUTPUT: longest phrase (string)

function longest(list) {
	var soLong = "";
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > soLong.length) {
			soLong = list[i];
		}

	}
	return soLong;
}

// RELEASE 1: FIND A KEY/VALUE MATCH

// INPUT: two JS objects
// STEPS:
//  -Default match status variable = false
//	-Assign keys of each object to variable (Returns array)
//  -Iterate through one key list checking each 
//   element against the other array for matches
//	-IF two keys match,
//		-Check if values match
//		-IF values match
//			-match status variable is TRUE
//   	-ELSE
//			-match status variable is still FALSE
//	-ELSE
//		-match status variable is still FALSE
//	-RETURN match status variable
// OUTPUT: TRUE if the objects share at lease one match; FALSE if not

function match(object1, object2) {
	matchStatus = false;
	// Separate object keys into their own array respectively
	object1Keys = Object.keys(object1);
	object2Keys = Object.keys(object2);
	// Macro loop for testing first key in first array against each key in the second array
	for (var u = 0; u < object1Keys.length; u++) {
		for (var i = 0; i < object2Keys.length; i++) {
			if (object1Keys[u] == object2Keys[i]) {
				if (object1[object1Keys[u]] == object2[object2Keys[i]]) {
					matchStatus = true
				}
			}
		}
	}
return matchStatus
}

// RELEASE 2: GENERATE RANDOM TEST DATA

// INPUT: integer (number elements in the array to be built)
// STEPS:
//	-Use integer to control number of times a loop is run
//  -Loop should create a string between 1 and 10 randomly generated characters.
//		-Then add that string to an array using index number associated with input integer.
//  -Return constructed array.
// OUTPUT: array of randomly generated strings between 1 and 10 characters long, 
//         the length of which == input integer

function randomArray(integer){
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var endArray = [];
	for (var i = 0; i < integer; i++){
		var stringTemplate = "";
		var charNumber = Math.floor((Math.random() * 10) + 1);
		for (var u = 0; u < charNumber; u++){
			stringTemplate = stringTemplate + alphabet[Math.floor((Math.random() * 25) + 0)];
		}
	endArray[i] = stringTemplate;
	}
	return endArray;
}



// RELEASE 0 TESTING

testArray = ["Cory", "Michael", "Constantine", "Michelle", "Robert"];
// Should output "Constantine"
console.log(longest(testArray));
testArray2 = ["grenandine", "simple syrup", "orgeat", "honey"];
// Should output "simple syrup"
console.log(longest(testArray2));
testArray3 = ["walrus", "tiger", "elephant", "boa constrictor"];
// Should output "boa constrictor"
console.log(longest(testArray3));


// RELEASE 1 TESTING

// TEST FOR TRUE OUTPUT

// Made sure to test objects with different number of key/value pairs
var myInfo = {name: "Cory", age: 26, happy: true};
var herInfo = {name: "Michelle", age: 30, happy: true, location: "Georgia"};
// Should print true because myInfo and herInfo share a key/value pair of "happy: true"
console.log(match(myInfo, herInfo));


// TEST FOR FALSE OUTPUT WITH OBJECTS WITHOUT SHARED KEYS OR VALUES

var favoriteColor = {"Cory": "green", "Chad": "red", "Kyle": "blue"};
var seasonalTemp = {spring: "warm", summer: "hot", fall: "cool", winter: "cold"};
// Should print false because favoriteColor and seasonalTemp share neither no keys or values
console.log(match(favoriteColor, seasonalTemp));

// TEST FOR FALSE OUTPUT WITH OBJECTS WITH SHARED KEY OR VALUE BUT NOT BOTH

var mathisFamily = {father: "Craig", mother: "Pam", child: "Kyle"}
var morminoFamily = {father: "Kyle", mother: "Rebecca", child: "Pam"}
// Should print false because, although the objects have identical keys, and some values happen to 
//	be common to both, not key/value pair is exactly the same.
console.log(match(mathisFamily, morminoFamily))



// RELEASE 2 TESTING

// Should create 10 random arrays, printing each and feeding each to the "longest" method, printing the result

for (i = 0; i < 10; i++){
	var array = randomArray(Math.floor((Math.random() * 5) + 1))
	console.log("")
	console.log("------------------------");
	console.log("Array " + i + ": " + array);
	console.log("")
	console.log("Longest Element: " + longest(array));
	console.log("------------------------");
	console.log("")
}











