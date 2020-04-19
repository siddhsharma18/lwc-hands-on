@isTest
private class LeadProcessorTest {
	@testSetup
    static void LeadTestSetup(){
        List<Lead> l = new List<Lead>();
        for (Integer i= 0;i<200;i++){
            l.add(new Lead(LastName='Lead'+i,company='Lead',status='Open'));
        }
        insert l;
    }
    @isTest
    static void batchTest(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        id batchId = Database.executeBatch(lp);
        Test.stopTest();
        System.assertEquals(200, [select count() from lead where LeadSource = 'Dreamforce']);

    }
}