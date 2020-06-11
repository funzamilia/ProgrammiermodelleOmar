
class Dog {
	private String name;
	private int size;

	Dog(String name, int size) {
		setName(name);
		setSize(size);
	}

	String getName() {
		return name;
	}

	int getSize() {
		return size;
	}

	void setName(String name) {
		if (name == null)
			throw new IllegalArgumentException();
		this.name = name;
	}

	void setSize(int size) {
		if (size < 0 || size > 100)
			throw new IllegalArgumentException();
		this.size = size;
	}

	@Override
	public String toString() {
		return "My name is " + name.toUpperCase() + ", my size is " + size + "cm";
	}

	@Override
	public boolean equals(Object other) {
		if (other == null || getClass() != other.getClass())
			return false;
		Dog dog = (Dog) other;
		return name.equals(dog.name) && size == dog.size;
	}
	
	static UnmodifiableDog unmodifialbeDog(Dog dog) {
		return new UnmodifiableDog(dog.getName(), dog.getSize());
	}

	static class UnmodifiableDog extends Dog {
		private final String name;
		private final int size;

		UnmodifiableDog(String name, int size) {
			super(name, size);
			this.name = name;
			this.size = size;
		}
		
		@Override
		void setName(String name) {
			throw new UnsupportedOperationException();
		}
		
		@Override
		void setSize(int size) {
			throw new UnsupportedOperationException();
		}
		
		@Override
		public boolean equals(Object other) {
			return name.equals(((Dog)other).name) && size == ((Dog)other).size;
		}

	}
}