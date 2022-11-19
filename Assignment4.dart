class Animal {
	String? name;
	bool? canFly;
	int? numberOfLegs;
	bool? isPet;
	String? colour;
	double? weight;
	String? gender;

	Animal(this.name, this.canFly, this.numberOfLegs, this.isPet, this.colour, this.weight, this.gender);

	String getName() {
		return name!;
	}

	bool flies() {
		return canFly!;
	}

	int getNumberOfLegs() {
		return numberOfLegs!;
	}

	bool pet() {
		return isPet!;
	}

	String getColour() {
		return colour!;
	}

	double getWeight() {
		return weight!;
	}

	String getGender() {
		return gender!;
	}
}

class Dog extends Animal{
	double? topSpeed;
	Dog(super.name, super.canFly, super.numberOfLegs, super.isPet, super.colour, super.weight, this.topSpeed, super.gender);

	void speak() {
		print("Bark !");
	}

	double getTopSpeed() {
		return topSpeed!;
	}

	dynamic giveBirth(String name, String colour, double weight, double topSpeed, String gender){
		if (getGender() == "Male") {
			print("Males can't give birth !!");
			return;
		} else {
			Dog d = Dog(name, this.canFly, this.numberOfLegs, this.isPet, colour, weight, topSpeed, gender);
			return d;
		}
	}
}

class Chicken extends Animal {

	Chicken(super.name, super.canFly, super.numberOfLegs, super.isPet, super.colour, super.weight, super.gender);
	
	void speak() {
		print("Cluck !");
	}

	dynamic lay(String name, String colour, double weight, String gender) {
		if (getGender() == "Male") {
			print("Males can't lay eggs");
			return;
		} else {
			Chicken c = Chicken(name, this.canFly, this.numberOfLegs, this.isPet, colour, weight, gender);
			return c;
		}
	}
}

void main(List<String> args) {
	Dog d = Dog("Mark", false, 4, true, "Brown", 50, 48, "Male");
	d.speak();
	Dog? d1 = d.giveBirth("Max", "Black", 25, 20, "Male");

	Chicken c = Chicken("Koko", true, 2, true, "White", 4, "Male");
	c.speak();
}