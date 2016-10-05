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

testArray = ["Cory", "Michael", "Constantine", "Michelle", "Robert"];
// Should output "Constantine"
longest(testArray);
testArray2 = ["grenandine", "simple syrup", "orgeat", "honey"];
// Should output "simple syrup"
longest(testArray2);
testArray3 = ["walrus", "tiger", "elephant", "boa constrictor"];
// Should output "boa constrictor"
longest(testArray3);