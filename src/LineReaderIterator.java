import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class LineReaderIterator implements Iterator<String>{	//Könnte auch private Subklasse von LineReader sein, da sie nur dort implementiert wird.

	List<String> list = new LinkedList<String>();
	String line = "";		//Zwischenspeicher für Zeilen aus BufferedReader
	BufferedReader br;
	boolean isNext = false;	//Zur Prüfung ob br.readLine schon aufgerufen wurde und somit "line" schon die nächste Zeile beinhaltet.
	
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
