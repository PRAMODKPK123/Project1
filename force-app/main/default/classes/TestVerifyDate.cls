@istest
public class TestVerifyDate {

    @istest public static void test1(){
        VerifyDate.CheckDates(system.today(),system.today().addDays(10));
        //system.assert(30/11/2018, Result As Expected);
        VerifyDate.CheckDates(System.today(),System.today().addDays(78));
    }
}