
package client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the client package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _InsulinDoseCalculator_QNAME = new QName("http://server/", "InsulinDoseCalculator");
    private final static QName _PersonalSensitivityToInsulinResponse_QNAME = new QName("http://server/", "personalSensitivityToInsulinResponse");
    private final static QName _SayHelloWorldFromResponse_QNAME = new QName("http://server/", "sayHelloWorldFromResponse");
    private final static QName _MealtimeInsulinDoseResponse_QNAME = new QName("http://server/", "mealtimeInsulinDoseResponse");
    private final static QName _InsulinDoseCalculatorResponse_QNAME = new QName("http://server/", "InsulinDoseCalculatorResponse");
    private final static QName _SayHelloWorldFrom_QNAME = new QName("http://server/", "sayHelloWorldFrom");
    private final static QName _BackgroundInsulinDoseResponse_QNAME = new QName("http://server/", "backgroundInsulinDoseResponse");
    private final static QName _MealtimeInsulinDose_QNAME = new QName("http://server/", "mealtimeInsulinDose");
    private final static QName _BackgroundInsulinDose_QNAME = new QName("http://server/", "backgroundInsulinDose");
    private final static QName _PersonalSensitivityToInsulin_QNAME = new QName("http://server/", "personalSensitivityToInsulin");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link PersonalSensitivityToInsulin }
     * 
     */
    public PersonalSensitivityToInsulin createPersonalSensitivityToInsulin() {
        return new PersonalSensitivityToInsulin();
    }

    /**
     * Create an instance of {@link BackgroundInsulinDose }
     * 
     */
    public BackgroundInsulinDose createBackgroundInsulinDose() {
        return new BackgroundInsulinDose();
    }

    /**
     * Create an instance of {@link InsulinDoseCalculatorResponse }
     * 
     */
    public InsulinDoseCalculatorResponse createInsulinDoseCalculatorResponse() {
        return new InsulinDoseCalculatorResponse();
    }

    /**
     * Create an instance of {@link SayHelloWorldFromResponse }
     * 
     */
    public SayHelloWorldFromResponse createSayHelloWorldFromResponse() {
        return new SayHelloWorldFromResponse();
    }

    /**
     * Create an instance of {@link PersonalSensitivityToInsulinResponse }
     * 
     */
    public PersonalSensitivityToInsulinResponse createPersonalSensitivityToInsulinResponse() {
        return new PersonalSensitivityToInsulinResponse();
    }

    /**
     * Create an instance of {@link InsulinDoseCalculator_Type }
     * 
     */
    public InsulinDoseCalculator_Type createInsulinDoseCalculator_Type() {
        return new InsulinDoseCalculator_Type();
    }

    /**
     * Create an instance of {@link MealtimeInsulinDoseResponse }
     * 
     */
    public MealtimeInsulinDoseResponse createMealtimeInsulinDoseResponse() {
        return new MealtimeInsulinDoseResponse();
    }

    /**
     * Create an instance of {@link MealtimeInsulinDose }
     * 
     */
    public MealtimeInsulinDose createMealtimeInsulinDose() {
        return new MealtimeInsulinDose();
    }

    /**
     * Create an instance of {@link SayHelloWorldFrom }
     * 
     */
    public SayHelloWorldFrom createSayHelloWorldFrom() {
        return new SayHelloWorldFrom();
    }

    /**
     * Create an instance of {@link BackgroundInsulinDoseResponse }
     * 
     */
    public BackgroundInsulinDoseResponse createBackgroundInsulinDoseResponse() {
        return new BackgroundInsulinDoseResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsulinDoseCalculator_Type }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "InsulinDoseCalculator")
    public JAXBElement<InsulinDoseCalculator_Type> createInsulinDoseCalculator(InsulinDoseCalculator_Type value) {
        return new JAXBElement<InsulinDoseCalculator_Type>(_InsulinDoseCalculator_QNAME, InsulinDoseCalculator_Type.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link PersonalSensitivityToInsulinResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "personalSensitivityToInsulinResponse")
    public JAXBElement<PersonalSensitivityToInsulinResponse> createPersonalSensitivityToInsulinResponse(PersonalSensitivityToInsulinResponse value) {
        return new JAXBElement<PersonalSensitivityToInsulinResponse>(_PersonalSensitivityToInsulinResponse_QNAME, PersonalSensitivityToInsulinResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloWorldFromResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "sayHelloWorldFromResponse")
    public JAXBElement<SayHelloWorldFromResponse> createSayHelloWorldFromResponse(SayHelloWorldFromResponse value) {
        return new JAXBElement<SayHelloWorldFromResponse>(_SayHelloWorldFromResponse_QNAME, SayHelloWorldFromResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MealtimeInsulinDoseResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "mealtimeInsulinDoseResponse")
    public JAXBElement<MealtimeInsulinDoseResponse> createMealtimeInsulinDoseResponse(MealtimeInsulinDoseResponse value) {
        return new JAXBElement<MealtimeInsulinDoseResponse>(_MealtimeInsulinDoseResponse_QNAME, MealtimeInsulinDoseResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsulinDoseCalculatorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "InsulinDoseCalculatorResponse")
    public JAXBElement<InsulinDoseCalculatorResponse> createInsulinDoseCalculatorResponse(InsulinDoseCalculatorResponse value) {
        return new JAXBElement<InsulinDoseCalculatorResponse>(_InsulinDoseCalculatorResponse_QNAME, InsulinDoseCalculatorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloWorldFrom }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "sayHelloWorldFrom")
    public JAXBElement<SayHelloWorldFrom> createSayHelloWorldFrom(SayHelloWorldFrom value) {
        return new JAXBElement<SayHelloWorldFrom>(_SayHelloWorldFrom_QNAME, SayHelloWorldFrom.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BackgroundInsulinDoseResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "backgroundInsulinDoseResponse")
    public JAXBElement<BackgroundInsulinDoseResponse> createBackgroundInsulinDoseResponse(BackgroundInsulinDoseResponse value) {
        return new JAXBElement<BackgroundInsulinDoseResponse>(_BackgroundInsulinDoseResponse_QNAME, BackgroundInsulinDoseResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MealtimeInsulinDose }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "mealtimeInsulinDose")
    public JAXBElement<MealtimeInsulinDose> createMealtimeInsulinDose(MealtimeInsulinDose value) {
        return new JAXBElement<MealtimeInsulinDose>(_MealtimeInsulinDose_QNAME, MealtimeInsulinDose.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BackgroundInsulinDose }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "backgroundInsulinDose")
    public JAXBElement<BackgroundInsulinDose> createBackgroundInsulinDose(BackgroundInsulinDose value) {
        return new JAXBElement<BackgroundInsulinDose>(_BackgroundInsulinDose_QNAME, BackgroundInsulinDose.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link PersonalSensitivityToInsulin }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "personalSensitivityToInsulin")
    public JAXBElement<PersonalSensitivityToInsulin> createPersonalSensitivityToInsulin(PersonalSensitivityToInsulin value) {
        return new JAXBElement<PersonalSensitivityToInsulin>(_PersonalSensitivityToInsulin_QNAME, PersonalSensitivityToInsulin.class, null, value);
    }

}
