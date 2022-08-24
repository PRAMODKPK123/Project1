<aura:application extends = "force:slds">
    <lightning:buttonIcon iconName = "utility:settings" alternativeText = "settings Not found"/>
    
    <lightning:buttonGroup>
        <lightning:button label = "submit"/>
        <lightning:button label = "Cancel"/> 
        <lightning:buttonIcon iconName = "utility:down" alternativeText = "Item Not Found" />
    </lightning:buttonGroup>
    
    <br></br>
    
    <lightning:buttonMenu>
        <lightning:menuItem label = "Account"/>
        <lightning:menuItem label = "Contact"/>
        <lightning:menuItem label = "Case"/>
        <lightning:menuItem label = "Opportunity"/>
        <lightning:buttonIcon iconName = "utility:down" alternativeText = "Item Not Found" />
    
    </lightning:buttonMenu>
    
    <br></br><br></br>
    <br></br>
    <br></br>
    <br></br>
    
    <lightning:buttonGroup>
        <lightning:button label = "New"/>
        <lightning:button label = "New Task"/>
        <lightning:button label = "New Event"/>
            <lightning:buttonMenu iconName = "utility:down">
                <lightning:menuItem label ="Account"/>
                <lightning:menuItem label ="Contact"/>
                <lightning:menuItem label ="Opportunity"/>
                <lightning:menuItem label ="Case"/>
            
            </lightning:buttonMenu>
        
    
    </lightning:buttonGroup>
</aura:application>