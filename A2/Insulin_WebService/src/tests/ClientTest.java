package tests;

import client.Client;
import org.junit.Test;
import static org.junit.Assert.*;


public class ClientTest {

    private Client client;

    public ClientTest() {
        client = new Client();
    }

    @Test
    public void backgroundInsulinDose() throws Exception {
        assertEquals(22, client.backgroundInsulinDose(79));
    }

    @Test
    public void mealtimeInsulinDose() throws Exception {
        assertEquals(14, client.mealtimeInsulinDose(60, 12, 200, 100, 25));
        assertEquals(0, client.mealtimeInsulinDose(95, 10, 100, 120, 50));
        assertEquals(8, client.mealtimeInsulinDose(120, 14, 170, 100, 60));
    }
}