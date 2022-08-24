<aura:application extends = "force:slds">
	<lightning:card title = "Account" iconName = "standard:account" footer = "Copy Rights">
    
    	Employee Name : <br></br>
<br></br>        Employee Age  : <br></br>
    </lightning:card>
    
    <br></br>
    <br></br>
    
    <lightning:card title = "Contact" iconName = "standard:contact">
        
    	<aura:set attribute = "actions">

            
            <lightning:button label = "Follow" iconName = "standard:follow"/>
            <lightning:buttonGroup>
               	<lightning:button label = "New"/>
                <lightning:button label = "Edit"/>
                <lightning:button label = "Cancel"/>
                
            </lightning:buttonGroup>
            
            <lightning:buttonMenu iconName = "utility:down" alternativeText = "Down Arrow" tooltip="right alignment">
                
                <lightning:Menuitem label = "New Task"/>
                <lightning:Menuitem label = "New Event"/>
                <lightning:Menuitem label = "New Action"/>
                <lightning:Menuitem label = "New Activity"/>
            
            </lightning:buttonMenu>
        
        </aura:set>
    </lightning:card>
</aura:application>