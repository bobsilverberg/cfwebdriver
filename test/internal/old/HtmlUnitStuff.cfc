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
    
    
    function testFindByXpath(){
      driver.get(f);
  	  //elements = driver.findElements(ByXPath("/html/");
  	  elements = driver.findElements(By.XPath("/html/body"));
  	  debug(elements[1]);
    }
    
    function dumpDriver(){
     //ERROR:debug(driver.getClient());
    }
    
    function setUp(){
      driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
	    by = createObject("java","org.openqa.selenium.By");
	    xml = fileRead(expandPath("/cfwebdriver/test/internal/test-config.xml"));
      dom = xmlParse(xml);
      f1 = xmlSearch(dom,"/config/file[@name='mxunitblog']");
      f = f1[1].xmlAttributes.path;
    
    }
    
    
    </cfscript>

</cfcomponent>