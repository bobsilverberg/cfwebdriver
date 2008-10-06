<cfcomponent output="false" extends="BaseWebDriverTests">
    <cfscript>
    
  function testSomething(){
    
    
    try{
      e = driver.findElementById("asasdasdasdasdd");
     
    }catch(org.openqa.selenium.NoSuchElementException ex){}
    
    
    try{
      e = driver.findElementByName("asasdasdasdasdd");
      
    }catch(org.openqa.selenium.NoSuchElementException ex){
    
    }
    e = driver.findElementByXPath("asasdasdasdasdd");
    
    
    try{
      
      
    }catch(org.openqa.selenium.NoSuchElementException ex){
    
    }
    
  }
    
   function testFindElement(){
    writeoutput("should find by id,name,xpath");
    e = driver.findElement("q");
    debug(e);
   }
   
  /*
   @BeforeTest/@AfterTest
  */ 
    
    function setUp(){
     setDriver("htmlunit");
     driver.get("http://google.com");
    }
    
   function  tearDown(){ }

    </cfscript>

</cfcomponent>