<cfcomponent output="false" extends="BaseWebDriverTests">
    <cfscript>



  
  //getWebClient()
  function testAuthenticate(){
    driver.authenticate("foo","bar","mydomain");
  }
  
  function testGetWebClient(){
   webClient = driver.getWebClient();
   debug(webClient);
   assertTrue(webClient != javacast("null","java.lang.Object") ,"getWebClient() is null" );
   assertEquals("com.gargoylesoftware.htmlunit.WebClient", webClient.getClass().getName());
  }
  
  
  

  function dumpDrivers(){
    debug(createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver"));
    debug(createObject("java","com.gargoylesoftware.htmlunit.WebClient"));

  }



  function makeSureWebDriverCompiles(){}



  function testNewInstance(){
    driver = driver.newInstance("htmlunit");
    debug(driver);
    assertIsTypeOf(driver,"cfwebdriver.WebDriver");
  }



  function testIsJavascriptEnabled(){
    assertFalse(driver.isJavascriptEnabled());
  }


  function testSetJavascriptEnabled(){
    driver.setJavascriptEnabled(true);
    assertTrue(driver.isJavascriptEnabled());
   }





  //------------------------

  /*
   @BeforeTest/@AfterTest
  */

    function setUp(){
    	setDriver("htmlunit");
      
    }

    function tearDown(){
      driver.close();
    }

    </cfscript>

</cfcomponent>