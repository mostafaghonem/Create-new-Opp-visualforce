public class createOppController {
    public Opportunity opp{get; set;}

    public createOppController() { //Constructor
        opp = new Opportunity();
    }

    public PageReference save() {
        try {
            insert(opp);
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }
        //  After successful Save, navigate to the default view page
        PageReference redirectSuccess = new ApexPages.StandardController(opp).view();
        return (redirectSuccess);
    }
}