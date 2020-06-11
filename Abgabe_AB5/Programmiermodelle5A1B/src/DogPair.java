

class DogPair {
	private final Dog small, big;

	DogPair(Dog dog1, Dog dog2) {
		if (dog1.getSize() < dog2.getSize()) {
			this.small = dog1;
			this.big = dog2;
		} else {
			this.small = dog2;
			this.big = dog1;
		}
	}

	public Dog getSmallDog() {
		return Dog.unmodifialbeDog(small); //Verhindert nach Kopie die Veränderung
	}

	@Override
	public String toString() {
		return "Small Dog: " + small + "\n" + "Big Dog: " + big;
	}
}
