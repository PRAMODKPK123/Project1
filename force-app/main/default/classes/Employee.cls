public class Employee {
    
    string EmployeeName{get;set;}
    integer EmployeeNo {get;set;}
    public Employee()
    {
        EmployeeName = 'Manisha';
        EmployeeNo = 001; 
    }
    
    Public void show()
    {
        EmployeeName = 'Manisha';
        EmployeeNo = 001; 
        system.debug('Pramods gf is '+EmployeeName);
        system.debug('Manisha Employee Number is  '+EmployeeNo);
    }

}