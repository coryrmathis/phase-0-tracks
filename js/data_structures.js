
// HORSE COLOR ARRAY
var horse_colors = ["pink", "yellow", "green", "blue"];
// HORSE NAME ARRAY
var horse_names = ["Freddie", "Calvin", "Ramona", "Michelle"];

// ADD HORSE COLOR FUNCTION
function addColor(color) {
	horse_colors.push(color);
}
// ADD HORSE FUNCTION
function addHorse(name) {
	horse_names.push(name);
}

// HORSE OBJECT CREATION

var horseObject = {};

// ARRAY ITERATION TO CREATE HORSE/COLOR PAIRS. *assumes same number of elements in each array*
for (var i = 0; i < horse_colors.length; i++) {
	horseObject[horse_names[i]] = horse_colors[i];
}

// PRINT OBJECT
console.log(horseObject)




// CAR OBJECT CONSTRUCTOR

function Car(owner, make, model, year, color) {

	console.log("New Car:", this);

	this.owner = owner;
	this.make = make;
	this.model = model;
	this.year = year;
	this.color = color;

	this.horn = function() {console.log("BEEEEEEP!");};

	console.log("NEW CAR ADDED...")
}

// CAR 1
var myCar = new Car("Cory", "Mazda", "Mazda 6", 2011, "gray")
console.log(myCar)
myCar.horn()
console.log(myCar.owner)

// CAR 2
var hisCar = new Car("Kyle", "Chevrolet", "Silverado", 2014, "gray")
console.log(hisCar)
myCar.horn()

// CAR 3
var herCar = new Car("Jessica", "Mazda", "CX-5", 2010, "black")
console.log(herCar)
myCar.horn()

