package tests;

import client.Client;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import java.util.Arrays;
import java.util.Collection;
import static org.junit.Assert.*;


@RunWith(Parameterized.class)
public class MealtimeInsulinDoseTest {

    private Client client;
    private int inputValue0;
    private int inputValue1;
    private int inputValue2;
    private int inputValue3;
    private int inputValue4;
    private int outputValue;

    public MealtimeInsulinDoseTest(int input0, int input1, int input2, int input3, int input4, int output) {
        client = new Client();
        inputValue0 = input0;
        inputValue1 = input1;
        inputValue2 = input2;
        inputValue3 = input3;
        inputValue4 = input4;
        outputValue = output;
    }

    @Parameterized.Parameters
    public static Collection<Object[]> data() {
        //Generate the pairs of input and output tests
        Object[][] data = new Object[][] {{60, 12, 200, 100, 25, 14}, {95, 10, 100, 120, 50, 0},
                {120, 14, 170, 100, 60, 8}};
        return Arrays.asList(data);
    }

    @Test
    public void testMealtimeInsulinDose() throws Exception {
        assertEquals(outputValue, client.mealtimeInsulinDose(inputValue0, inputValue1, inputValue2, inputValue3,
                inputValue4));
    }
}