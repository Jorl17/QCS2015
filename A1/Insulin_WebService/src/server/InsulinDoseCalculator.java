package server;


import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

/**
 * This class was based on an interface developed by Raul Barbosa and Henrique Madeira for the Software Quality and
 * Dependability course in the Master's Degree in Informatics Engineering. The mentioned interface describes a highly
 * simplified insulin dose calculator.
 * <p>
 * Patients with type-2 diabetes need periodic insulin injections to help
 * process blood sugar. It is critical to be able to provide enough insulin to
 * metabolize the carbohydrates obtained from food, and even more critical to
 * never inject higher doses that may cause hypoglycemia, potentially leading to
 * coma and brain damage.
 * <p>
 * One of the fundamental goals is to maintain a target blood sugar level
 * throughout the day, somewhere between 80 mg/dl and 120 mg/dl (constant for a
 * given patient, as prescribed by the doctor). Patients regularly measure the
 * blood glucose level and calculate the necessary insulin.
 * <p>
 * Classes implementing this interface should use floating point arithmetic
 * internally for all calculations, with results rounded to the nearest integer.
 *
 * @author Raul Barbosa
 * @author Henrique Madeira
 * @author Joaquim Leitão
 * @author João Miguel Simões
 * @version 1.1
 */
@WebService
public class InsulinDoseCalculator {

    public void InsulinDoseCalculator()
    {

    }

    @WebMethod
    public String sayHelloWorldFrom(String from)
    {
        String result = "Hello, world, from " + from;
        System.out.println(result);
        return result;
    }

    /**
     * Calculates the number of insulin units needed after one meal.
     * <p>
     * This method takes the amount of carbohydrate in a given meal, and returns
     * the number of units of insulin needed after that meal. The returned
     * number of units of insulin equals the carbohydrate dose plus the high
     * blood sugar dose, which are computed as follows.
     * <p>
     * The carbohydrate dose equals the total grams of carbohydrates in the meal
     * divided by the amount of carbohydrate disposed by one unit of insulin,
     * corrected by taking into account the personal sensitivity to insulin.
     * This dose equals <code>carbohydrateAmount / carbohydrateToInsulinRatio /
     * personalSensitivity x 50</code>.
     * <p>
     * The high blood sugar dose equals the difference between the pre-meal
     * blood sugar level and the target blood sugar level, divided by the
     * personal sensitivity to insulin. This equals <code>(preMealBloodSugar -
     * targetBloodSugar) / personalSensitivity</code>. The personal sensitivity
     * may be estimated using <code>personalSensitivityToInsulin()</code>.
     * <p>
     * In the special case when the target blood sugar level is greater than the
     * pre-meal blood sugar level, the return value of this method is zero (no
     * insulin).
     *
     * @param carbohydrateAmount amount of carbohydrate in the meal, in grams
     * @param carbohydrateToInsulinRatio carbohydrate grams disposed by one unit
     * @param preMealBloodSugar pre-meal measured blood sugar level, in mg/dl
     * @param targetBloodSugar prescribed target blood sugar level, in mg/dl
     * @param personalSensitivity personal sensitivity to insulin
     * @return the mealtime units of insulin needed, or -1 in case of error
     */
    @WebMethod
    public float mealtimeInsulinDose(int carbohydrateAmount, int carbohydrateToInsulinRatio, int preMealBloodSugar, int targetBloodSugar, int personalSensitivity)
    {
        float insulineAfterMeal, highBloodSugarDose, carboDose;

        //Check the inputs parameters -- FIXME: CHECK IF WE ARE DOING THIS RIGHT
        if (carbohydrateAmount < 60 || carbohydrateAmount > 120)
            return -1;//FIXME: Check what value to return in this case

        else if (carbohydrateToInsulinRatio != 12)
            return -1;//FIXME: Check what value to return in this case

        else if (preMealBloodSugar <= 100)
            return -1;//FIXME: Check what value to return in this case

        else if (targetBloodSugar < 80 || targetBloodSugar > 120)
            return -1;//FIXME: Check what value to return in this case

        else if (personalSensitivity != 50)
            return -1;//FIXME: Check what value to return in this case

        highBloodSugarDose = (preMealBloodSugar - targetBloodSugar) / personalSensitivity; // Calculate high blood sugar dose

        carboDose = carbohydrateAmount / carbohydrateToInsulinRatio; // Calculate carbohydrate dose

        insulineAfterMeal = highBloodSugarDose + carboDose; // Needed insulin after meal time

        return insulineAfterMeal;
    }

    /**
     * Calculates the total number of units of insulin needed between meals.
     * <p>
     * The total insulin units required in one day equals <code>0.55 x body
     * weight</code> in kilograms. This method returns 50% of that number, since
     * the background need for insulin, between meals, is around half of the
     * daily total.
     *
     * @param bodyWeight the person's weight in kilograms
     * @return the background units of insulin needed, or -1 in case of error
     */
    public double backgroundInsulinDose(int bodyWeight)
    {
        double insulineDose;

        //Check the inputs parameters -- FIXME: SHOULD WE DO THIS HERE?
        if (bodyWeight < 0)
            return -1;//FIXME: Check what value to return in this case

        insulineDose = 0.55 * bodyWeight;

        return insulineDose;
    }

    /**
     * Determines an individual's sensitivity to one unit of insulin.
     * <p>
     * One unit of insulin typically drops blood sugar by 50 mg/dl, but this
     * value depends on each individual's sensitivity and daily physical
     * activity. This method predicts the blood sugar drop (in mg/dl) that will
     * result from one unit of insulin, for a given physical activity level.
     * <p>
     * To predict the blood sugar drop, this method accepts two arrays with
     * K samples of (physical activity level, blood sugar drop). The two arrays
     * must therefore have the same length. First, a simple linear regression
     * (least squares method) is performed to compute alpha and beta. Then, the
     * return value is <code>alpha + beta x physicalActivityLevel</code>.
     * <p>
     * The physical activity levels, including the ones in the array of samples,
     * and the blood sugar drop values are non-negative integers. The return
     * value of this method may be passed to <code>mealtimeInsulinDose()</code>
     * as a parameter.
     *
     * @param physicalActivityLevel most recent activity level (the predictor)
     * @param physicalActivitySamples K samples of past physical activity
     * @param bloodSugarDropSamples corresponding K samples of blood sugar drop
     * @return the blood sugar drop in mg/dl, or -1 in case of error
     */
    int personalSensitivityToInsulin(int physicalActivityLevel, int[] physicalActivitySamples, int[] bloodSugarDropSamples)
    {
        float[] regressionCoefficients;

        int dropInBloodSugar;

        //TODO: samples array length must be up to 10 elements

        //Check the inputs parameters -- FIXME: CHECK IF WE ARE DOING THIS RIGHT
        if (physicalActivityLevel < 0 || physicalActivityLevel > 10)
            return -1;//FIXME: Check what value to return in this case
        else if (physicalActivitySamples.length != bloodSugarDropSamples.length)
            return -1;//FIXME: Check what value to return in this case

        //Check the k samples
        for (int i = 0; i < bloodSugarDropSamples.length; i++)
        {
            if (physicalActivitySamples[i] < 0 || physicalActivitySamples[i] > 10)
                return -1;//FIXME: Check what value to return in this case
            else if (bloodSugarDropSamples[i] < 25 || bloodSugarDropSamples[i] > 100)
                return -1;//FIXME: Check what value to return in this case
        }

        regressionCoefficients = simpleLinearRegression(physicalActivitySamples, bloodSugarDropSamples, physicalActivitySamples.length);

        dropInBloodSugar = Math.round(regressionCoefficients[0] + regressionCoefficients[1] * physicalActivityLevel); //FIXME: ask about method return type

        return 0;
    }

    /**
     * Least squares estimator of a linear regression model with a single explanatory variable
     * Based on: http://en.wikipedia.org/wiki/Simple_linear_regression
     *
     * @param dataX independent variable set
     * @param dataY dependent variable set
     * @param nSamples number of samples in each variable set
     * @return regression coefficients [alpha, beta]
     */
    float[] simpleLinearRegression(int[] dataX, int[] dataY, int nSamples)
    {
        int i;

        float[] regressionCoefficients;

        float sX=0, sY=0, sXX=0, sXY = 0;
        float beta, alpha;

        for (i=0; i<nSamples; i++)
        {
            sX += dataX[i];
            sY += dataY[i];
            sXX += dataX[i] * dataX[i];
            sXY += dataX[i] * dataY[i];
        }

        beta = ((nSamples * sXY) - (sX * sY)) / ((nSamples * sXX - (sX*sX)));
        alpha = (sY / nSamples) - beta * (sX / nSamples);

        regressionCoefficients = new float[]{alpha, beta};

        return regressionCoefficients;
    }

    public static void main(String[] args)
    {
        InsulinDoseCalculator implementor = new InsulinDoseCalculator();
        String address = "http://localhost:9000/Server";
        Endpoint.publish(address, implementor);
    }

}
