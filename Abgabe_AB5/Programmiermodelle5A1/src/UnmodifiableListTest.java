import java.util.*;

public class UnmodifiableListTest {

	public static void main(String[] args) {
		LinkedList<String> list = new LinkedList<String>();
		list.add("One");
		list.add("Two");
		list.add("Three");
		System.out.println(list);
		List<String> sl = Collections.unmodifiableList(list);
		System.out.println(sl);
		System.out.println(sl.subList(0, 2));
		sl.forEach(entry -> System.out.println(entry));
	}

}
