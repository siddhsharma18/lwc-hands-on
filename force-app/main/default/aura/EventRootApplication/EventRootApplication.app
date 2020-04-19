<aura:application extends="force:slds">
    <aura:handler event="c:ApplicationEvent" action="{!C.handleApplicationEvent}"/>
    <!-- Register of app event is not manditory -->
    <aura:registerEvent name="appEvent" type="c:ApplicationEvent"/>

    <aura:registerEvent name="componentEvent" type="c:ComponentEvent"/>
    <aura:handler name="componentEvent" action="{!C.handleComponentEvent}" phase="capture"/>
    
    <lightning:card >
        <aura:set attribute="title">Application</aura:set>
        <div class="slds-grid slds-p-around--medium">
            <lightning:button label="Fire application event" onclick="{!c.fireApplicationEvent}"/>
            <lightning:button label="Fire component event" onclick="{!c.fireComponentEvent}"/>
        </div>
        <div class="slds-m-around--large">
            <c:Component_A />
            <c:Component_B />
        </div>
    </lightning:card>
</aura:application>