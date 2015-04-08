package server;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService
public class Server
{

    @WebMethod
    public String sayHelloWorldFrom(String from)
    {
        String result = "Hello, world, from " + from;
        System.out.println(result);
        return result;
    }

    public static void main(String[] args)
    {
        Object implementor = new Server();
        String address = "http://localhost:9000/Server";
        Endpoint.publish(address, implementor);
    }
}
