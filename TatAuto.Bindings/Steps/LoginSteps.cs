using System.Threading;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using TatAuto.Pages;
using TechTalk.SpecFlow;

namespace TatAuto.Bindings.Steps
{
    [Binding]
    public class LoginSteps
    {
        private readonly IWebDriver _driver;

        public LoginSteps()
        {
            _driver = ScenarioContext.Current.Get<IWebDriver>("currentDriver");
        }


        [Given(@"I Navigate to the Login page")]
        public void GivenINavigateToTheLoginPage()
        {
           _driver.Navigate().GoToUrl("https://portalangular.z13.web.core.windows.net/account/login");
            Thread.Sleep(10000);

            
        }
        
        
        [When(@"I Login with Username '(.*)' and Password '(.*)' on the Login Page")]
        public void WhenILoginWithUsernameAndPasswordOnTheLoginPage(string username, string password)
        {
            LoginPObject loginPage = new LoginPObject(_driver);
            loginPage.LoginAs(username, password);
            Thread.Sleep(5000);
        }


        [Then(@"the User Name '(.*)' Should be seen on the Dashboard Page")]
        public void ThenTheUserNameShouldBeSeenOnTheDashboardPage(string expectedUser)
        {
            DashboardPObject dashboardPage = new DashboardPObject(_driver);
            Assert.IsTrue(dashboardPage.GetUser().Contains(expectedUser));
            Thread.Sleep(5000);
            dashboardPage.Logout();
        }

        [When(@"I Unsucessfully Login with Username '(.*)' and Password '(.*)' on the Login Page")]
        public void WhenIUnsucessfullyLoginWithUsernameAndPasswordOnTheLoginPage(string username, string password)
        {
            LoginPObject loginPage = new LoginPObject(_driver);
            loginPage.LoginUnsuccessfullyAs(username, password);
        }


        [Then(@"I Should See Error Message '(.*)' on the Login Page")]
        public void ThenIShouldSeeErrorMessageOnTheLoginPage(string errorMessage)
        {
            LoginPObject loginPage = new LoginPObject(_driver);
            loginPage.GetErrorMessage();
         
        }

        [Then(@"user logout from TAG client portal")]
        public void ThenUserLogoutFromTAGClientPortal()
        {
            DashboardPObject dashboardPage = new DashboardPObject(_driver);
            dashboardPage.Logout();
        }


    }
}
