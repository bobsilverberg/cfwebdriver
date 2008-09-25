<cfcomponent output="false" extends="mxunit.framework.TestCase">
    
    <cfscript>
    function testLoadWebdriverFromWebInf(){
	   
	    driver.setJavascriptEnabled(true);
	    driver.get("http://google.com");
	    debug("driver.getTitle() == " & driver.getTitle());
	    q = driver.findElement(By.name("q"));
	    debug(q);
	    keys = arrayNew(1);
	    keys[1] = "mxunit";
	    q.sendKeys(keys);
	    //q = driver.findElement(By.linkText("MXUnit Blog"));
	    q.click();
	    debug(driver.getPageSource());
	    debug(driver.getTitle());
    }  
    
    
    function dumpDriver(){
     
    }
    
    function setUp(){
      driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
	  by = createObject("java","org.openqa.selenium.By");
    
    }
    
    
    </cfscript>

</cfcomponent>