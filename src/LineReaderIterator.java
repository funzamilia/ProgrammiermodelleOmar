import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class LineReaderIterator implements Iterator<String>{

	List<String> list = new LinkedList<String>();
	String line = "";
	BufferedReader br;
	boolean isNext = false;
	
	public LineReaderIterator(BufferedReader br) {
		this.br = br;
	}
	
	@Override
	public boolean hasNext() {
		if(isNext == false) {
			try {
				line = br.readLine();
			} catch (IOException e) {
				e.printStackTrace();
			}
			isNext = true;
			return (line != null);
		} else {
			return (line != null);
		}
	}

	@Override
	public String next() {
		if(isNext == false) {
			try {
				line = br.readLine();
			} catch (IOException e) {
				e.printStackTrace();
			}
			isNext = true;
			return line;
		} else {
			isNext = false;
			return line;
		}
	}

}
