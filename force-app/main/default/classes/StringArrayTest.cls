public class StringArrayTest {

    public static list<string> generateStringArray(integer i){
                   list<string> l = new list<string>();

        for(integer j=0;j<i;j++){
           l.add('Test '+i);
        }        
        return l;
    }
}