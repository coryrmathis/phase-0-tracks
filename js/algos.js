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
	console.log(soLong);
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
	object1Keys = Object.keys(object1);
	object2Keys = Object.keys(object2);
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




// RELEASE 0 TESTING

testArray = ["Cory", "Michael", "Constantine", "Michelle", "Robert"];
// Should output "Constantine"
longest(testArray);
testArray2 = ["grenandine", "simple syrup", "orgeat", "honey"];
// Should output "simple syrup"
longest(testArray2);
testArray3 = ["walrus", "tiger", "elephant", "boa constrictor"];
// Should output "boa constrictor"
longest(testArray3);