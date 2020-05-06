import static org.junit.jupiter.api.Assertions.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;

class Test {
	String s = "";
	String s1 = "Das sind \nmehrere Zeilen\n...\ntztzt";
	String filename = "I:\\Studium4\\Programmiermodelle\\Praktikum\\read.me";
	File file = new File(filename);

	StringReader sr;

	@org.junit.jupiter.api.Test
	void testLeer() {
		sr = new StringReader(s);
		LineReader lines = new LineReader(sr);
		for (String line : lines)
			System.out.println(line);
		for (String line : lines)
			System.out.println(line);
	}

	@org.junit.jupiter.api.Test
	void testSR() {
		sr = new StringReader(s1);
		LineReader lines = new LineReader(sr);
		for (String line : lines)
			System.out.println(line);
		for (String line : lines)
			System.out.println(line);
	}

	@org.junit.jupiter.api.Test
	void testFile() {
		try {
			Reader reader = new FileReader(file);
			LineReader lines = new LineReader(reader);
			for (String line : lines)
				System.out.println(line);
			for (String line : lines)
				System.out.println(line);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

	}

}
