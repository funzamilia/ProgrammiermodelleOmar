
public class ReverseText {
	
	static String reverse(String text) {
		String result="";
		for(int i=text.length()-1; i>=0; i--){
		result+=text.charAt(i);
		}
		return result;
	}
	
	static String reverseRekursiv(String text) {
		if(text.length() == 0) {
			return "";
		}
		return reverseRekursiv(text.substring(1)) + text.charAt(0);
	}
	
	static String reverse_help(String text, String akku) {
		if(text.length() == 0) { return akku; }
		return reverse_help(text.substring(0, text.length() - 1), akku + text.charAt(text.length()-1));
	}
	
	static String reverseEndrekursiv(String text) {
		return reverse_help(text, "");
	}

	public static void main(String[] args) {
		String testString = "";
		for(int i = 0; i < 3000; i++) {
			testString += "a";
		}
		testString += "Z";
		System.out.println(reverse(testString));
		System.out.println(reverseRekursiv(testString));
		System.out.println(reverseEndrekursiv(testString));
	}

}
