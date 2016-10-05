var horse_colors = ["pink", "yellow", "green", "blue"];
var horse_names = ["Freddie", "Calvin", "Ramona", "Michelle"];

function addColor(color) {
	horse_colors.push(color);
}

function addHorse(name) {
	horse_names.push(name);
}










function Car(make, model, year) {

	console.log("New Car:", this);

	this.make = make;
	this.model = model;
	this.year = year;

	this.horn = function() {cosole.log("BEEEEEEP!");};

}