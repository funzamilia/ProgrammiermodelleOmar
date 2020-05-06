import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;

public class LineReaderTest {

	public static void main(String[] args) throws FileNotFoundException {
		String filename = "I:\\Studium4\\Programmiermodelle\\Praktikum\\read.me";
		File file = new File(filename);
		Reader reader = new FileReader(file);
		LineReader lines = new LineReader(reader);
		for(String line : lines)
		 System.out.println(line);
		for(String line : lines)
		 System.out.println(line);
	}

}
