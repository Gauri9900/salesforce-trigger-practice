@isTest
public class ContactTriggerTest {
	 @isTest
    static void testSourceAndEmailCheck() {
        Contact c1 = new Contact(LastName = 'NoEmail');
        Test.startTest();
        try {
            insert c1;
            System.assert(false, 'Expected error due to missing email');
        } catch (DmlException e) {
            System.assert(e.getMessage().contains('Email is mandatory'));
        }
        Test.stopTest();

        Contact c2 = new Contact(LastName = 'WithEmail', Email = 'test@example.com');
        insert c2;

        Contact result = [SELECT Source__c FROM Contact WHERE Id = :c2.Id];
        System.assertEquals('Manual Entry', result.Source__c);
    }
}
