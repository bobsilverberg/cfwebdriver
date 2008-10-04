<cfcomponent output="false" extends="mxunit.framework.TestCase">
    <cfscript>
    
  function testGoogleAjaxSearch(){
    //Clear the default search contents
    search.clear();
    search.sendKeys("mxunit");
    button.click();
    moreResultsElement = driver.findElementByXPath("id('searchcontrol')/div/div/div[2]/table/tbody/tr/td[1]/div[3]/div[3]");
    moreResultsElement.click();
    link = driver.findElementByLinkText("mxunit | Google Groups");
    debug(link.getText());
    assertEquals("mxunit | Google Groups", link.getText());
    search.clear();
    
    search.sendKeys("fusebox coldfusion"); 
    button.click();  
    link = driver.findElementByLinkText("Fusebox: Welcome to the Fusebox Framework");
    debug(link.getText());
    assertEquals("Fusebox: Welcome to the Fusebox Framework", link.getText());
    search.clear();
    
    search.sendKeys("webdriver"); 
    button.click();  
    link = driver.findElementByLinkText("webdriver - Google Code");
    debug(link.getText());
    assertEquals("webdriver - Google Code", link.getText());
    link.click();
    
  }

  
  function _testXPathTester(){
   link = driver.findElementByXPath("id('searchcontrol')/div/div/div[4]/div[2]/div[1]/div/div[1]/a");
   debug(link.getText());
   assertEquals("2009 Volkswagen GTI - car and driver",link.getText());
  
  }
  /*
   @BeforeTest/@AfterTest
  */  
    
   function setUp(){
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("firefox");
    
    //Use below to specify an alternative location for Firefox:
    //driver.setFireFoxPath("C:/Programs/Mozilla Firefox/firefox.exe");
    
    //Use an existing instance of Firefox if one is running
    //driver.setUseExistingFireFoxInstance(true);
    
    driver.get("http://www.google.com/uds/samples/apidocs/helloworld.html");
    search = driver.findElement("search");
    button = driver.findElementByXpath("/html/body/div/div/form/table/tbody/tr/td/input[@class='gsc-search-button']");
   }
    
   function  tearDown(){ }

    </cfscript>

</cfcomponent>