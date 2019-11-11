using System.Threading;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;

namespace TatAuto.Pages
{
    public class DashboardPObject
    {

        [FindsBy(How = How.XPath, Using = "//span[contains(text(),'admin')]")]
        protected IWebElement UserNameTxt { get; set; }

        [FindsBy(How = How.XPath, Using = "/html/body/app-root/ng-component/div/default-layout/div/div[2]/div/div[2]/div[1]/topbar/div/div/div[2]/div[2]/div/a")]
        protected IWebElement LogoutBtn { get; set; }

        private IWebDriver _driver;

        public DashboardPObject(IWebDriver driver)
        {
            _driver = driver;
            PageFactory.InitElements(_driver, this);
        }


        /// <summary>
        /// Get Displayed User Name 
        /// </summary>
        /// <returns></returns>
        public string GetUser()
        {
            return UserNameTxt.Text;
        }

        public void Logout()
        {
            UserNameTxt.Click();
            Thread.Sleep(3000);
            LogoutBtn.Click();
        }
    }
}
