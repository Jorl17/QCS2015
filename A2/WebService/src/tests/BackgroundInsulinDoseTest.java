package tests;

import client.Client;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import java.util.Arrays;
import java.util.Collection;
import static org.junit.Assert.*;

@RunWith(Parameterized.class)
public class BackgroundInsulinDoseTest {

    private Client client;
    private int inputValue;
    private int outputValue;

    public BackgroundInsulinDoseTest(int input, int output) {
        client = new Client();
        inputValue = input;
        outputValue = output;
    }

    @Parameterized.Parameters
    public static Collection<Object[]> data() {
        //Generate the pairs of input and output tests
        Object[][] data = new Object[][] {{79, 22}};
        return Arrays.asList(data);
    }

    @Test
    public void testBackgroundInsulinDose() throws Exception {
        assertEquals(outputValue, client.backgroundInsulinDose(inputValue));
    }
}