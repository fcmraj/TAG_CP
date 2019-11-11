using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;

namespace TatAuto.Pages
{
    public class LoginPObject
    {
        [FindsBy(How = How.XPath, Using = "//*[contains(@name,'userNameOrEmailAddress')]")]
        protected IWebElement UsernameTxtBox { get; set; }

        [FindsBy(How = How.XPath, Using = "//*[contains(@name,'password')]")]
        protected IWebElement PasswordTxtBox { get; set; }

        [FindsBy(How = How.XPath, Using = "//*[contains(@type,'submit')]")]
        protected IWebElement LoginBtn { get; set; }

        [FindsBy(How = How.Id, Using = "swal2-content")]
        protected IWebElement ErrorText { get; set; }

        private readonly IWebDriver _driver;

        public LoginPObject(IWebDriver driver)
        {
            _driver = driver;
            PageFactory.InitElements(_driver, this);
        }

        public DashboardPObject LoginAs(string username, string password)
        {
            Login(username, password);
            return new DashboardPObject(_driver);
        }
  
        public LoginPObject LoginUnsuccessfullyAs(string username, string password)
        {
            Login(username, password);
            return this;
        }

        public string GetErrorMessage()
        {
            return ErrorText.Text;
        }

        private void Login(string username, string password)
        {
            UsernameTxtBox.SendKeys(username);
            PasswordTxtBox.SendKeys(password);
            LoginBtn.Click();
        }
    }

    public class boolean
    {
    }
}