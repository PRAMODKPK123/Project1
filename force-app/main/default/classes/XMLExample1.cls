public class XMLExample1 {
    
    public string XMLString {set;get;}
    public XMLExample1()
    {
        DOM.Document doc = new DOM.Document();
        DOM.XmlNode root = doc.createRootElement('Institute','Capital','sm');
        DOM.XmlNode name = root.addChildElement('Name',null,null);
        name.addTextNode('P3 LTD');
        DOM.XmlNode Phone = root.addChildElement('Phone',null,null);
        Phone.addTextNode('8639817779');
        DOM.XmlNode Place = root.addChildElement('Place',null,null);
        Place.addTextNode('Champapet');
        place.setAttribute('City','Hyderabad');
        XMLString = doc.toXmlString();
    }

}