@isTest
public class AnimalLocatorTest {
    @isTest static void AnimalLocatorMock1(){
        test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(3);
        string expectedResult = 'cow';
        system.assertEquals(result, expectedResult);
    }
}