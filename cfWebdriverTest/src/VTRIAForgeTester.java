

	import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

	public class VTRIAForgeTester {
		
		WebDriver driver;

		public VTRIAForgeTester() {
		}
		
		public HomePage getVTHomePage() {

			driver = new FirefoxDriver();
			System.setProperty("webdriver.firefox.useExisting","true");
			driver.get("http://validatethis.riaforge.org");
			return new HomePage(driver);

		}

	}

