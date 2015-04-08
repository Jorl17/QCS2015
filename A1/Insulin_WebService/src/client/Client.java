package client;

/**
 * Created by jbsimoes on 08/04/15.
 */
public class Client
{

    public static void main(String[] args)
    {
        InsulinDoseCalculatorService service = new InsulinDoseCalculatorService();
        InsulinDoseCalculator proxy = service.getInsulinDoseCalculatorPort();

        System.out.println(proxy.sayHelloWorldFrom("ola"));
    }
}
