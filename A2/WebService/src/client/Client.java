package client;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Client {

    ////
    // Begin of the developed code to test the Insulin Dose Calculator Web Service
    ////

    private InsulinDoseCalculator proxy;
    private InsulinDoseCalculatorService service;

    public Client() {
        service = new InsulinDoseCalculatorService();
        proxy = service.getInsulinDoseCalculatorPort();
    }

    public int backgroundInsulinDose(int value)
    {
        return proxy.backgroundInsulinDose(value);
    }

    public int mealtimeInsulinDose(int arg0, int arg1, int arg2, int arg3, int arg4)
    {
        return proxy.mealtimeInsulinDose(arg0, arg1, arg2, arg3, arg4);
    }

    public int personalSensitivityToInsulin(int arg0, List<Integer> list0, List<Integer> list1)
    {
        return proxy.personalSensitivityToInsulin(arg0, list0, list1);
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
    static List<Integer> arrayToList(int[] array) {
        List<Integer> list = new ArrayList<Integer>();
        for(int i : array)
            list.add(i);
        return list;
    }

    ////
    // End of the developed code to test the Insulin Dose Calculator Web Service
    ////

    public static void main(String[] argv)
    {
        //Fazer isto depois para múltiplos web services
        InsulinDoseCalculator service = null;
        try {
            //service = new InsulinDoseCalculatorService(new URL("http://liis-lab.dei.uc.pt:8080/Server?wsdl")).getInsulinDoseCalculatorPort();
            //service = new InsulinDoseCalculatorService(new URL("http://qcs12.dei.uc.pt:8080/insulin?wsdl")).getInsulinDoseCalculatorPort();
            //service = new InsulinDoseCalculatorService(new URL("http://qcs18.dei.uc.pt:8080/insulin?wsdl")).getInsulinDoseCalculatorPort();14
            service = new InsulinDoseCalculatorService(new URL("http://localhost:9000/InsulinDoseCalculator?wsdl")).getInsulinDoseCalculatorPort();
            //service = new InsulinDoseCalculatorService(new URL("http://vm-sgd17.dei.uc.pt:80/InsulinDoseCalculator?wsdl")).getInsulinDoseCalculatorPort();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        //InsulinDoseCalculator service = new InsulinDoseCalculatorService().getInsulinDoseCalculatorPort();
        menu(service);
    }

    public static void menu(InsulinDoseCalculator service)
    {
        Scanner sc = new Scanner(System.in);
        int exit = 0;
        int choice;

        while(exit == 0)
        {
            displayMenu();

            choice = sc.nextInt();

            switch (choice)
            {
                case 1:
                    callMealTime(service);
                    break;
                case 2:
                    callBackground(service);
                    break;
                case 3:
                    callPersonal(service);
                    break;
                case 4:
                    callSpecial(service);
                    break;
                case 0:
                    exit = 1;
                    break;
            }
        }

        System.out.println("Thank for using Insulin Dose Calculator!");
    }

    public static void callSpecial(InsulinDoseCalculator service)
    {
        System.out.println("###########Special Meal Time Insulin Dose###########\n" +
                "Input total grams of carbohydrates in the meal: [60 - 120]");
        Scanner sc = new Scanner(System.in);
        int carbohydrateAmount = sc.nextInt();

        System.out.println("Input total grams of carbohydrates processed by 1 unit of rapid acting insulin: [10 - 15]");
        int carbohydrateToInsulinRatio = sc.nextInt();

        System.out.println("Input actual blood sugar level: [120 - 250]");
        int preMealBloodSugar = sc.nextInt();

        System.out.println("Input target blood sugar level: [80 - 120]");
        int targetBloodSugar = sc.nextInt();

        System.out.println("Input your physical activity level for today [0-10]");
        int physicalActivityLevel = sc.nextInt();

        System.out.println("Input number of days: [2 - 10]");
        int numDays = sc.nextInt();

        List<Integer> physicalActivitySamples = new ArrayList<Integer>();
        List<Integer> bloodSugarDropSamples = new ArrayList<Integer>();
        int counter;

        for(counter = 0; counter < numDays; counter++)
        {
            System.out.println("Input physical activity for day " +(counter+1) +": [0 - 10]");
            physicalActivitySamples.add(sc.nextInt());

            System.out.println("Input blood sugar drop for day " +(counter+1) +": [15 - 100]");
            bloodSugarDropSamples.add(sc.nextInt());
        }

        System.out.println("Your SPECIAL Meal Time Insulin Dose is: " +service.mealtimeInsulinDose(carbohydrateAmount, carbohydrateToInsulinRatio, preMealBloodSugar, targetBloodSugar, service.personalSensitivityToInsulin(physicalActivityLevel, physicalActivitySamples, bloodSugarDropSamples)));
    }

    public static void callMealTime(InsulinDoseCalculator service)
    {
        System.out.println("###########Meal Time Insulin Dose###########\n" +
                "Input total grams of carbohydrates in the meal: [60 - 120]");
        Scanner sc = new Scanner(System.in);
        int carbohydrateAmount = sc.nextInt();

        System.out.println("Input total grams of carbohydrates processed by 1 unit of rapid acting insulin: [10 - 15]");
        int carbohydrateToInsulinRatio = sc.nextInt();

        System.out.println("Input actual blood sugar level: [120 - 250]");
        int preMealBloodSugar = sc.nextInt();

        System.out.println("Input target blood sugar level: [80 - 120]");
        int targetBloodSugar = sc.nextInt();

        System.out.println("Input individual sensitivity: [15 - 100]");
        int personalSensitivity = sc.nextInt();

        System.out.println("Your Meal Time Insulin Dose is: " +service.mealtimeInsulinDose(carbohydrateAmount, carbohydrateToInsulinRatio, preMealBloodSugar, targetBloodSugar, personalSensitivity));
    }

    public static void callBackground(InsulinDoseCalculator service)
    {
        System.out.println("\n###########Background Insulin Dose###########\n" +
                "Input your weight in Kilograms: [40 - 130]");
        Scanner sc = new Scanner(System.in);
        int weight = sc.nextInt();

        System.out.println("Your Background Insulin Dose is: " + service.backgroundInsulinDose(weight) +"\n\n");
    }

    public static void callPersonal(InsulinDoseCalculator service)
    {
        System.out.println("###########Personal Insulin Sensitivity###########\n" +
                "Input your physical activity level for today [0-10]");
        Scanner sc = new Scanner(System.in);
        int physicalActivityLevel = sc.nextInt();

        System.out.println("Input number of days: [2 - 10]");
        int numDays = sc.nextInt();

        List<Integer> physicalActivitySamples = new ArrayList<Integer>();
        List<Integer> bloodSugarDropSamples = new ArrayList<Integer>();
        int counter;

        for(counter = 0; counter < numDays; counter++)
        {
            System.out.println("Input physical activity for day " +(counter+1) +": [0 - 10]");
            physicalActivitySamples.add(sc.nextInt());

            System.out.println("Input blood sugar drop for day " +(counter+1) +": [15 - 100]");
            bloodSugarDropSamples.add(sc.nextInt());
        }

        System.out.println("Your drop in blood sugar from one insulin unit is: " +service.personalSensitivityToInsulin(physicalActivityLevel, physicalActivitySamples, bloodSugarDropSamples));
    }

    public static void displayMenu()
    {
        System.out.println("###########Insulin Dose Calculator###########\n" +
                "1 - Meal Time Insulin Dose\n" +
                "2 - Background Insulin Dose\n" +
                "3 - Personal Insulin Sensitivity\n" +
                "4 - Special\n" +
                "0 - Quit\n");

    }
}
