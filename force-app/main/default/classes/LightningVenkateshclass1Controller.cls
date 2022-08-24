public class LightningVenkateshclass1Controller {
    @AuraEnabled
    public static DataWrap getData(){
        DataWrap d=new DataWrap();
        d.ename='Parthasaradhi';
        d.enumber=100;
        d.status=true;
        return d;
    }
    public class DataWrap{
        public string ename{set;get;}
        public integer enumber{set;get;}
        public boolean status{set;get;}
    }
}