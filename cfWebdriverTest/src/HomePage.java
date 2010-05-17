

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class HomePage {
	
	WebDriver driver;
	WebElement knownIssuesLink;
	
	public HomePage(WebDriver driver) {
		this.driver = driver;
	}
	
	public KnownIssues getKnownIssuesPage() {
		knownIssuesLink = this.driver.findElement(By.linkText("Known Issues"));
		knownIssuesLink.click();
		return new KnownIssues(this.driver);
	}
	
	public String getTitle() {
		return this.driver.getTitle();
	}

}
