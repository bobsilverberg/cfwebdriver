

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class KnownIssues {
	
	WebDriver driver;
	WebElement newIssueLink;

	public KnownIssues(WebDriver driver) {
		this.driver = driver;
	}

	public NewIssue getNewIssuePage() {
		newIssueLink = this.driver.findElement(By.linkText("new issue"));
		newIssueLink.click();
		return new NewIssue(this.driver);
	}
	
	public String getTitle() {
		return this.driver.getTitle();
	}

}
