
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

    private final static QName _SayHelloWorldFromResponse_QNAME = new QName("http://server/", "sayHelloWorldFromResponse");
    private final static QName _MealtimeInsulinDoseResponse_QNAME = new QName("http://server/", "mealtimeInsulinDoseResponse");
    private final static QName _SayHelloWorldFrom_QNAME = new QName("http://server/", "sayHelloWorldFrom");
    private final static QName _MealtimeInsulinDose_QNAME = new QName("http://server/", "mealtimeInsulinDose");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SayHelloWorldFromResponse }
     * 
     */
    public SayHelloWorldFromResponse createSayHelloWorldFromResponse() {
        return new SayHelloWorldFromResponse();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link SayHelloWorldFrom }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "sayHelloWorldFrom")
    public JAXBElement<SayHelloWorldFrom> createSayHelloWorldFrom(SayHelloWorldFrom value) {
        return new JAXBElement<SayHelloWorldFrom>(_SayHelloWorldFrom_QNAME, SayHelloWorldFrom.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link MealtimeInsulinDose }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://server/", name = "mealtimeInsulinDose")
    public JAXBElement<MealtimeInsulinDose> createMealtimeInsulinDose(MealtimeInsulinDose value) {
        return new JAXBElement<MealtimeInsulinDose>(_MealtimeInsulinDose_QNAME, MealtimeInsulinDose.class, null, value);
    }

}
