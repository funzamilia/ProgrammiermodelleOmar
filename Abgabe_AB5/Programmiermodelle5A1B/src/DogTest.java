
public class DogTest {

	public static void main(String[] args) {
		Dog snoopy = new Dog("Snoopy", 42);
		Dog bella = new Dog("Bella", 23);
		DogPair pair = new DogPair(snoopy, bella);
		System.out.println(pair);
		Dog helper = pair.getSmallDog();
		helper.setSize(90);
		System.out.println(pair);
	}

}
