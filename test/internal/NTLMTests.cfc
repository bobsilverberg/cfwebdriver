<cfcomponent output="false" extends="BaseWebDriverTests">
    <cfscript>
    
  function testLogIntoNTLMRealm(){
    driver.addNTLMCredentials("","","",-1,"", "");
    driver.get("http://asd");
    assertEquals("Intranet", driver.getTitle());
  }
    
   
  function testAmazonia(){
   driver.get("https://www.amazon.com/gp/sign-in.html?ie=UTF8&email=&disableCorpSignUp=&path=/gp/yourstore&redirectProtocol=&mode=&useRedirectOnSuccess=1&query=signIn%3D1%26ref_%3Dpd_irl_gw&pageAction=/gp/yourstore");
   driver.findElement("email").sendKeys("");
   driver.findElement("password").sendKeys("");
   driver.findElementByXPath("/html/body/form[1]/table/tbody/tr[2]/td[2]/table/tbody/tr[6]/td[2]/input[1]").click();
   expected = "Hello, William D Shelton. We have recommendations for you. (Not William?) ";
   actual = driver.findElementById("navidWelcomeMsg"); 
   debug(actual.getText());                                   
   assertTrue(find("Hello, William D Shelton" , actual.getText()) );
   driver.findElementByLinkText("Wish List").click();
   actual = driver.findElementById("navidWelcomeMsg");  
   assertTrue(find("Hello, William D Shelton" , actual.getText()) );
  } 
  /*
   @BeforeTest/@AfterTest
  */ 
    
   function setUp(){
     setDriver("htmlunit");
     //driver.setFireFoxPath("C:/Programs/Mozilla Firefox/firefox.exe");
     //driver.setUseExistingFireFoxInstance(true);
   }
    
   function  tearDown(){
    driver.close();
   }

    </cfscript>

</cfcomponent>