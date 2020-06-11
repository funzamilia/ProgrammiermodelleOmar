import java.io.IOException;

public class Test {

	public static void main(String[] args) {
		SensorAggregator sa;
		String sensorName = "Tpot (K)";
		try {
			sa = new SensorAggregator();
			System.out.println(sa.getMax(sensorName, "01.01.2009", "01.02.2009"));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		

	}

}
