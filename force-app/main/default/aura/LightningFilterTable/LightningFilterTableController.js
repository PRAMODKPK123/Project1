({
	doInit : function(component, event, helper) {
        
		// how to call backend method 
		var action = component.get("c.getData");
        action.setCallback(this,function(response){
            //response.getState();
            var data = response.getReturnValue();
            component.set("v.accList",data);
            console.log(JSON.stringify(data));
            
        });
        //it will add action to actionqueueue
        $A.enqueueAction(action);
	},
    searchData : function(component, event, helper) {
        var action = component.get("c.fetchData");
        action.setParams({"searchName":component.get("v.accname")});
        action.setCallback(this,function(response){
            //response.getState();
            var data = response.getReturnValue();
            component.set("v.accList",data);
            console.log(JSON.stringify(data));
            
        });
        //it will add action to actionqueueue
        $A.enqueueAction(action);  
    }
})