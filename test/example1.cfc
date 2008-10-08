<cfcomponent output="false" extends="mxunit.framework.TestCase">
  <cfscript>  
  function doGoogleSearch(){
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("firefox");
    driver.setFirefoxPath("C:/Programs/Mozilla Firefox/firefox.exe");
    driver.get("http://google.com");
    q = driver.findElement("q");
    q.sendKeys("mxunit");
    q.submit();
    link = driver.findElementByLinkText("MXUnit Blog");
    link.click();
    assertEquals("MXUnit Blog", driver.getTitle());
  }
  </cfscript>
</cfcomponent>