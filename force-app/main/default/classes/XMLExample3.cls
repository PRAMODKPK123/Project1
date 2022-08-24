public class XMLExample3 {
    
    public Blob body     {get;set;}
    public string result {get;set;}
    
     public void convert()
    {
        string XMLstring = body.toString();
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