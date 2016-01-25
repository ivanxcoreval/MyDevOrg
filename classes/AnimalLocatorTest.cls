@isTest
global class AnimalLocatorTest {

    public static testmethod void test() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        AnimalLocator testLocator = new AnimalLocator();
        System.debug(AnimalLocator.getAnimalNameById(1));
    }
}