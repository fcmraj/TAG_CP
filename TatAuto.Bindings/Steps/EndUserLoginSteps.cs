using System;
using TechTalk.SpecFlow;

namespace TatAuto.Tests
{
    [Binding]
    public class EndUserLoginSteps
    {
        [When(@"user enter valid '(.*)'")]
        public void WhenUserEnterValid(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Login succeeded")]
        public void WhenLoginSucceeded()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"user navigated to user profile")]
        public void WhenUserNavigatedToUserProfile()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"user role should be '(.*)' in user profile")]
        public void WhenUserRoleShouldBeInUserProfile(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"user enter invalid username")]
        public void WhenUserEnterInvalidUsername()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"user enter invalid password")]
        public void WhenUserEnterInvalidPassword()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"Login attempt should fail with rejection message saying ""(.*)""")]
        public void ThenLoginAttemptShouldFailWithRejectionMessageSaying(string p0)
        {
            ScenarioContext.Current.Pending();
        }
    }
}
