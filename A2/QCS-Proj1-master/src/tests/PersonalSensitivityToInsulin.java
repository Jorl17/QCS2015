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
public class PersonalSensitivityToInsulin {

    private Client client;
    private int inputValue;
    private int[] inputArray0;
    private int[] inputArray1;
    private int outputValue;

    public PersonalSensitivityToInsulin(int arg0, int[] list0, int[] list1, int output) {
        client = new Client();
        inputValue = arg0;
        inputArray0 = list0;
        inputArray1 = list1;
        outputValue = output;
    }

    @Parameterized.Parameters
    public static Collection<Object[]> data() {
        //Generate the pairs of input and output tests
        int[] banana = {0, 10};
        int[] banana2 = {50, 50};

        Object[][] data = new Object[][] {{5, banana, banana2, 50}};
        return Arrays.asList(data);
    }

    @Test
    public void testPersonalSensitivityToInsulin() throws Exception {
        assertEquals(outputValue, client.personalSensitivityToInsulin(inputValue, arrayToList(inputArray0), arrayToList(inputArray1)));
    }

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
        for (int i : array)
            list.add(i);
        return list;
    }
}