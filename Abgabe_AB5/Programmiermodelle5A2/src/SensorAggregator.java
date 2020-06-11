import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class SensorAggregator {
	
	private final Stream<String> stream;
	private final Map<Double, String> cols;
	private final String head;
	private final Object[] sa;		//Array gefüllt mit Zeilen des Streams
	private final long lineCount;	//Sollte genutzt werden, um die rekursion in lineToColumn zu beschränken, jedoch									
									//gibt es bei über 5000 durchläufen einen Stackoverflow, welchen ich nicht beheben konnte.
									//deswegen hart gecoded 5000 bei Zeile 44
	
	public SensorAggregator() throws IOException {
		this.cols = new HashMap<Double, String>();
		lineCount = Files.lines(Paths.get("C:\\Users\\Saleh Omar\\Desktop\\Studium4\\Programmiermodelle\\Praktikum\\jena.csv")).count();
		stream = Files.lines(Paths.get("C:\\Users\\Saleh Omar\\Desktop\\Studium4\\Programmiermodelle\\Praktikum\\jena.csv"));
		sa = stream.toArray();
		head = Files.lines(Paths.get("C:\\Users\\Saleh Omar\\Desktop\\Studium4\\Programmiermodelle\\Praktikum\\jena.csv")).findFirst().get();	//Erste Zeile zu String
	}
	
	Map<Double, String> lineToColumn(int index, int pos){
		if(index == 1) {
			return cols;
		} else {
			cols.put(Double.parseDouble(sa[index].toString().split(",")[pos]), sa[index].toString().split(",")[0]);
			return lineToColumn(index - 1, pos); // Die Map befüllen mit Daten und dem gewünschten Wert: Map<wertZuSensorname, datum>
		}
	}
	
	public int posInSpalte(String name) {
		return new ArrayList<String>(Arrays.asList(head.split(","))).indexOf("\"" + name + "\""); // Index der Spalte des gewünschten Sensornamen
	}
	
	double getMax(String sensorName, String from, String to) {
		return lineToColumn(5000, posInSpalte(sensorName)).entrySet().stream().filter(entry -> 	//Die Zeilen rausfiltern, welche ein Datum zwischen from und to aufweisen.
															((Integer.parseInt(entry.getValue().split(" ")[0].split("\\.")[2]) <= Integer.parseInt(to.split(" ")[0].split("\\.")[2])) && 
															(Integer.parseInt(entry.getValue().split("\\.")[1]) <= Integer.parseInt(to.split("\\.")[1])) && 
															(Integer.parseInt(entry.getValue().split("\\.")[0]) <= Integer.parseInt(to.split("\\.")[0])) &&
															(Integer.parseInt(entry.getValue().split(" ")[0].split("\\.")[2]) >= Integer.parseInt(from.split(" ")[0].split("\\.")[2])) &&
															(Integer.parseInt(entry.getValue().split("\\.")[1]) >= Integer.parseInt(from.split("\\.")[1])) &&
															(Integer.parseInt(entry.getValue().split("\\.")[0]) >= Integer.parseInt(from.split("\\.")[0]))))
														.max((x, y) -> x.getKey().compareTo(y.getKey())).get().getKey(); //Die Double Werte des gefilterten Streams vergleichen und den max Wert zurückgeben.
		
	}
}
