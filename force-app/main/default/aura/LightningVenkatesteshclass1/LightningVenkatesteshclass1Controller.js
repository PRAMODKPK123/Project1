({
	setData : function(component, event, helper) {
        // data setting
        
		/*component.set("v.EmployeeName","Pramod");
        component.set("v.EmployeeNumber","102");
        component.set("v.EmployeeStatus",false);*/
        
        // backend method calling
        
        var action = component.get("c.getData");
        action.setCallback(this,function(response){
            //response.getState();
            var data = response.getReturnValue();
            console.log(JSON.stringify(data));
            component.set("v.EmployeeName",data.ename);
            component.set("v.EmployeeNumber",data.enumber);
            component.set("v.EmployeeStatus",data.status);
        });
        //it will add action to actionqueueue
        $A.enqueueAction(action);
        
	}
})