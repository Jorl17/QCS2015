package server;

import javax.xml.ws.Endpoint;


public class Server
{
    public static void main(String[] args)
    {
        InsulinDoseCalculator implementor = new InsulinDoseCalculator();
        String address = "http://localhost:9000/Server";
        Endpoint.publish(address, implementor);
    }
}
