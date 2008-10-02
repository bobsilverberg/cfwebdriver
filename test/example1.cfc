<cfcomponent output="false" extends="mxunit.framework.TestCase">
  <cfscript>  
  function doGoogleSearch(){
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("firefox");
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