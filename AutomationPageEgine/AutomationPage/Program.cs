using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.IE;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Safari;
using OpenQA.Selenium;
using OpenQA.Selenium.Remote;
using System.Net;

namespace AutomationPage
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                String Link = args[0];
                String ShowProgress = args[1];
                String Method = args[2];   
                //String Link = "https://www.google.co.id/";
                //String ShowProgress = "no";
                //String Method = "VALUENCLICK";

                if (Method == "AUTOPAGE")
                {
                    ChromeDriverService service = ChromeDriverService.CreateDefaultService();
                    service.HideCommandPromptWindow = true;

                    ChromeOptions chromeOptions = new ChromeOptions();
                    if (ShowProgress == "YES")
                        chromeOptions.AddArguments("--headless");

                    chromeOptions.AddArguments("--disable-images");
                    chromeOptions.AddArgument("--disable-bundled-ppapi-flash");
                    chromeOptions.AddArgument("--disable-extensions");
                    chromeOptions.AddArguments("incognito");
                    chromeOptions.AddUserProfilePreference("profile.default_content_setting_values.images", 2);

                    var driver = new ChromeDriver(chromeOptions);
                    driver.Navigate().GoToUrl(Link);
                    string source = driver.PageSource;
                    driver.Quit();
                    Console.WriteLine(source);
                }
                else if (Method == "VALUENCLICK")
                {
                    String Value = args[3];
                    ChromeDriverService service = ChromeDriverService.CreateDefaultService();
                    service.HideCommandPromptWindow = true;

                    ChromeOptions chromeOptions = new ChromeOptions();
                    if (ShowProgress == "YES")
                        chromeOptions.AddArguments("--headless");

                    chromeOptions.AddArguments("--disable-images");
                    chromeOptions.AddArgument("--disable-bundled-ppapi-flash");
                    chromeOptions.AddArgument("--disable-extensions");
                    chromeOptions.AddArguments("incognito");

                    var driver = new ChromeDriver(chromeOptions);
                    driver.Navigate().GoToUrl(Link);

                    driver.Manage().Timeouts().SetPageLoadTimeout(TimeSpan.FromSeconds(10));


                    IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
                    js.ExecuteScript("document.getElementById('lst-ib').value='" + Value + "';");

                    System.Threading.Thread.Sleep(1000);
                    System.Windows.Forms.Application.DoEvents();

                    IWebElement element = driver.FindElement(By.Name("btnK"));
                    element.SendKeys("Penulusuran Google");

                    string source = driver.PageSource;
                    driver.Quit();
                    Console.WriteLine(source);

                    Console.Read();
                }

            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
                Console.Read();
            }


        }
        //this will search for the element until a timeout is reached
     

    }
}
