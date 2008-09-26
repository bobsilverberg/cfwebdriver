<cfcomponent output="false" extends="mxunit.framework.TestCase">
    <cfscript>
        
    
    function testLoadAndRunFF(){
     runDriver("ff");
    }
        
    function testLoadAndRunIEDriver(){
	   runDriver("ie");
    }  
    
    function dump(){
      by = createObject("java","org.openqa.selenium.By");
      d = createObject("java","org.openqa.selenium.ie.InternetExplorerDriver").init();
      d.get("http://google.com");
      q = d.findElement( by.name("q"));
      keys = arrayNew(1);
	  keys[1] = "mxunit";
      q.sendKeys(keys);
      dump(q);
    }
    
    function setUp(){
     driver = createObject("component","cfwebdriver.WebDriver").newInstance("htmlunuit");   
    }
    
    function tearDown(){
      //driver.close(); //what's the difference between these two?
      driver.quit();
    }

    </cfscript>

  
  <cffunction name="runDriver" access="private">
    <cfargument name="browser">
    <cfscript>
       driver = createObject("component","cfwebdriver.WebDriver").newInstance(arguments.browser);
	    //driver.setJavascriptEnabled(true);
	    driver.get("http://google.com");
	    debug("driver.getTitle() == " & driver.getTitle());
	    q = driver.findElement("q");
	    //debug(q);
	    q.sendKeys("mxunit");
	    //q = driver.findElement(By.linkText("MXUnit Blog"));
	    q.submit();
	    q = driver.findElementByLinkText("MXUnit Blog");
	    q.click();
	    //debug(driver.getPageSource());
	    debug(driver.getTitle());
	    assertEquals("MXUnit Blog", driver.getTitle());
    
    </cfscript> 
   </cffunction>


</cfcomponent>


