public class XMLExample2 {
    public string result   {set;get;}
    public string XMLString {set;get;}
    
    public void convert()
    {
        DOM.Document doc = new DOM.Document();
        doc.load(XMLString);
        DOM.XmlNode root = doc.getRootElement();
        list<DOM.XmlNode> childs = root.getChildElements();
        
        for(DOM.XmlNode d : childs)
        {
            result = result + '\n' +d.getName() + ' : ' +d.getText();
        }
    
    }

}