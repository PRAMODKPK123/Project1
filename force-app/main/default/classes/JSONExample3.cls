public class JSONExample3 {

    public integer age {set;get;}
    public decimal salary{set;get;}
    public student std {set;get;}
    
    Public JSONExample3()
    {
        age = (integer)system.JSON.deserialize('10',Integer.class);
        salary = (decimal)system.JSON.deserialize('32.23',decimal.class);
        string stud = '{"Name":"Pramod","Phone":1234,"Email":"pramod@gmail.com"}';
        std = (student)System.JSON.deserialize(stud,student.class);
    }
}