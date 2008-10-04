<cfcomponent output="false" extends="mxunit.framework.TestCase">
    <cfscript>


    function testLoadAndRunFF(){
     //createObject("java","java.lang.System").setProperty("webdriver.firefox.bin","C:/Programs/Mozilla Firefox/firefox.exe");
     //runDriver("ff");
     //debug(driver);
     assertIsTypeOf(driver , "cfwebdriver.FirefoxDriver" ,"Driver is NULL");
     
    }



    function setUp(){
     driver = createObject("component","cfwebdriver.DriverFactory").newInstance("ff");
    }

    function tearDown(){
      //driver.close(); //what's the difference between these two?
      //driver.quit();
    }

    </cfscript>


  <cffunction name="runDriver" access="private">
    <cfargument name="browser">
    <cfscript>
       driver = createObject("component","cfwebdriver.WebDriver").newInstance(arguments.browser);
       debug(driver.driver);
      //driver.setJavascriptEnabled(true);
      driver.get("http://google.com");
      debug("driver.getTitle() == " & driver.getTitle());
      q = driver.findElement("q");
      //debug(q);
      q.sendKeys("mxunit");
      //q = driver.findElement(By.linkText("MXUnit Blog"));
      q.submit();
      //q = driver.driver.findElementByPartialLinkText("MXUnit Blog");
      //q.click();
      //debug(driver.getPageSource());
      debug(driver.getTitle());
      //driver.close(); //what's the difference between these two?
      //driver.quit();
      
      assertEquals("MXUnit Blog", driver.getTitle());
   
    </cfscript>
   </cffunction>


</cfcomponent>


