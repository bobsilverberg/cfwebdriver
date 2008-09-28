<cfcomponent output="false" extends="mxunit.framework.TestCase">
  <cfsavecontent >
    <cfscript>
  
  
  function testFindElementsByName() {
  	element.sendKeys("mxunit");
  	elements = driver.findElementsByName("q");
  	debug(driver.getPageSource());
  	debug(elements);
  	
  }
  
  
  function dumpDrivers(){
    debug(createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver"));
    
  }
    
    
    
  function makeSureWebDriverCompiles(){}
   
   
   
  function testNewInstance(){
    driver = driver.newInstance("htmlunit");
    debug(driver);
    assertIsTypeOf(driver,"cfwebdriver.WebDriver");
  }  
  
  
  function testGet() {
   driver = driver.newInstance("htmlunit");
   driver.get("http://google.com");
  }   
    
    
    
  function testClose(){
   driver.close();
  } 
 
 
 
  function testFindElement(){
   
    assertIsTypeOf(element, "cfwebdriver.WebElement");
    debug(element);
    element.sendKeys("mxunit");
    debug(driver);
    debug("q ==" & element.getText()); //not sure why this is empty ...?
    element.submit();
    debug(driver.getTitle());
    debug(driver.getPageSource());
    
    assertEquals("mxunit - Google Search", driver.getTitle());    
  } 
  
  
  function testGetCurrentUrl() {
    element.sendKeys("mxunit");
    element.submit();
    debug(driver.getCurrentUrl());
    assertEquals("mxunit - google search", driver.getTitle(), "Title tag not right for mxunit search test");
    assertEquals("http://www.google.com/search?hl=en&q=mxunit&btnG=Google+Search",driver.getCurrentUrl() ,"Google URL changed?");
   } 
  
  
  function testFindElementByLinkText() {
   element.sendKeys("mxunit blog");
   element.submit();
   debug(driver.getTitle());
   //element = driver.findElementByLinkText("Privacy");
   debug(element);
   //element.click();
   fail("driver.findElementByLinkText() not intuitive. Also appears to kill instance of HTML unit. Handle exceptions in CF IMplementation");
  } 
  
  function testGetTitle() {
    assertEquals("Google", driver.getTitle());
  } 
  
  
  function testGetPageSource() {
    //assertTrue(len(driver.getPageSource()) > 100 );
  }
  
  function testIsJavascriptEnabled(){
    assertFalse(driver.isJavascriptEnabled());
  } 
  
  
   function testSetJavascriptEnabled(){
    driver.setJavascriptEnabled(true);
    assertTrue(driver.isJavascriptEnabled());
   } 
  
  
  function testFindElementsById() {
  	//debug( driver.findElementsById("gbar") );
  } 
  
  
  //To Dos ...........................
  function testFindElements(){
  	fail("to do");
    } 
  
  
  
  function testFindElementsByXPath() {
   fail("to do");
  } 

  
  
  function testGetVisible() {
    fail("to do");
  }
  
  function testManage(){
    fail("to do");
  } 
  function testNavigate(){
    fail("to do");
  } 
  function testQuit() {
    fail("to do");
  }  
 
  function testSetProxy(){
    fail("to do");
  } 
  function testSetVisible(){
    fail("to do");
  } 
  function testSwitchTo(){
    fail("to do");
  } 
	   
   
  /*
   @BeforeTest/@AfterTest
  */ 
    
    function setUp(){
      driver = createObject("component","cfwebdriver.WebDriver");
      driver = driver.newInstance("htmlunit");
      driver.get("http://google.com");
      element = driver.findElement("q");
    }
    
    function tearDown(){ 
      driver.close();
    }

    </cfscript>

</cfcomponent>