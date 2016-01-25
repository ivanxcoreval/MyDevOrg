@isTest
public class TestTest {
    
    private void runSomething() {
        system.debug([SELECT RunAsUserId FROM EmailServicesAddress]);
		system.debug([SELECT Id, Name, Email FROM User]);
    }
    
    static testMethod void testSomething () {
        
        TestTest someThing = new TestTest();
        someThing.runSomething();
    }

}