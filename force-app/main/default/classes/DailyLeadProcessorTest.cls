@isTest
private class DailyLeadProcessorTest {
    @testSetup
    static void setup(){
        list<Lead> listofLead = new List<Lead>();
        for(integer i=0;i<=200;i++){
            Lead ld = new lead( company='comp',lastName='LastName'+i,Status = 'Working - Contacted');
            listofLead.add(ld);
        }
        insert listofLead;
    }
    static testmethod void testDailyLeadProcessorScheduledJob(){
         String sch = '0 5 12 * * ?';
        test.startTest();
        String jobId = System.schedule('ScheduledApexTest', sch, new DailyLeadProcessor());
        List<Lead> lstOfLead = [SELECT Id FROM Lead WHERE LeadSource = null LIMIT 200];
        System.assertEquals(200, lstOfLead.size());
        test.stopTest();
    }

}