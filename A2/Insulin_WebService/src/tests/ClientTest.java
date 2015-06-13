package tests;

import client.Client;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import static org.junit.Assert.*;

@RunWith(Parameterized.class)
public class ClientTest {

    private Client client;
    private int inputValue;
    private int outputValue;

    public ClientTest(int input, int output) {
        client = new Client();
        inputValue = input;
        outputValue = output;
    }

    @Parameterized.Parameters
    public static Collection<Object[]> data() {
        Object[][] data = new Object[][] {{79, 22}};
        return Arrays.asList(data);
    }

    @Test
    public void testBackgroundInsulinDose() throws Exception {
        assertEquals(outputValue, client.backgroundInsulinDose(inputValue));
    }

    /*
    @Test
    public void testMealtimeInsulinDose() throws Exception {
        assertEquals(14, client.mealtimeInsulinDose(60, 12, 200, 100, 25));
        assertEquals(0, client.mealtimeInsulinDose(95, 10, 100, 120, 50));
        assertEquals(8, client.mealtimeInsulinDose(120, 14, 170, 100, 60));
    }

    @Test
    public void testPersonalSensitivityToInsulin() throws Exception {
        int[] banana = {0, 10};
        int[] banana2 = {50, 50};
        assertEquals(50, client.personalSensitivityToInsulin(5, arrayToList(banana), arrayToList(banana2)));
    }
    */

    /**
     * Instead of passing an int[] to a web service, pass a List<Integer>.
     * <p>
     * This method converts an array of int to a List of Integer. When a web
     * service publishes a method that receives an int[] as parameter, the type
     * gets converted to a "sequence" in XML, and the client should therefore
     * submit, as parameter, a List<Integer> instead of an int[]. The web
     * service will still receive an int[] on the server side.
     *
     * @param array the array of int, to be converted to List<Integer>
     * @return a list containing the same numbers as the array
     */
    public List<Integer> arrayToList(int[] array) {
        List<Integer> list = new ArrayList<>();
        for(int i : array)
            list.add(i);
        return list;
    }
}