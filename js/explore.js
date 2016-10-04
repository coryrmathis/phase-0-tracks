// Method should accept a string
// Iterate over the string printing each character in
// the reverse order of its index.

function reverse(string) {
	var workingString = ""
	for (var i = 1; i <= string.length; i++) {
	workingString = workingString + string[string.length - i];
	}
	return workingString
}

var greenOpposite = reverse("green");

if (1 == 1) {
	console.log(greenOpposite);
}
