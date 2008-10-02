/**

  WebDriver
  @author bill
  @description ColdFusion wrapper for webdriver (http://code.google.com/p/webdriver)
  
  @todo: lots - subclass driver types

*/

<cfcomponent displayname="WebDriver" output="true">

  
  <cfscript>
	  this.by = createObject("java","org.openqa.selenium.By");
	  this.driver = "";
	  this.webelement = "";
	
	  function newInstance(type){
	     switch(type){
	     
	     case "ff" : {
	       this.driver = createObject("java","org.openqa.selenium.firefox.FirefoxDriver");
	       break;
	     }
	     
	     case "firefox" : {
	       this.driver = createObject("java","org.openqa.selenium.firefox.FirefoxDriver");
	       break;
	     }
	          
	     case "ie": {
	       this.driver = createObject("java","org.openqa.selenium.ie.InternetExplorerDriver");
	       break;
	     }
	     
	     case "htmlunit": {
	       this.driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
	       break;
	     }
	     
	     default :
	       this.driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
	       break;
	     }
	     
	     return this;
	   }
	
	
		
	  function setDriver(driver){
	   this.driver = driver;
	   return this;
	  }
	
	   function get(url) {
	     this.driver.get(arguments.url);
	   }  
	
	
	    function close() {
	      this.driver.close();
	    }
  
         
		function executeScript() {
		  throwNotImplementedException("executeScript");
		} //java.lang.String, java.lang.Object[] :: java.lang.Object 
		
		 
		function findElement(by){
		  var element = createObject("component","WebElement");
		  this.webelement = this.driver.findElement(this.by.name(by));
		  element.init(this.webelement);
		  return element; 
		} 
		
		
		function findElementByLinkText(text){
		  var element = createObject("component","WebElement");
		  this.webelement = this.driver.findElementByLinkText(text);
		  element.init(this.webelement);
		  return element; 
		} 
		
		
		function getTitle() {
		  return this.driver.getTitle();
		} //java.lang.String 
		
		
		function getPageSource() {
		  return this.driver.getPageSource();
		} //java.lang.String 
		
		
		function getCurrentUrl() {
		  return this.driver.getCurrentUrl();
		} //java.lang.String 
		
		
	    function isJavascriptEnabled(){
	      return this.driver.isJavascriptEnabled();
	    } // boolean 
		
		
		function setJavascriptEnabled(enable){
		  this.driver.setJavascriptEnabled(enable);
		} //void 
		
		
		function findElementsById(id) {
		  return this.driver.findElementsById(id);
		}  //)(java.lang.String) java.util.List 
		
		
		
		function findElementsByName(name) {
			var elements = arrayNew(1);
			var element = "";
			var i = 1;
			var webelements = this.driver.findElementsByName(name);
			for(i = 1; i lte arrayLen(webelements); i = i +1){
			  element = createObject("component","WebElement").init(webelements[i]);
			  elements.add(element);
			}
		  return elements; //array of WebElement objects
		} 
		
		
		function findElementByName(name) {
			return this.driver.findElementByName(name);
		} 
		
		
		function findElementsByXPath(xpath) {
			var elements = arrayNew(1);
			var element = "";
			var i = 1;
			//var webelements = this.driver.findElementsByXPath(xpath);
			var webelements = this.driver.findElements(this.By.xPath(xpath));
			for(i = 1; i lte arrayLen(webelements); i = i +1){
			  element = createObject("component","WebElement").init(webelements[i]);
			  elements.add(element);
			}
		  return elements; //array of WebElement objects
		} 
		
		
		function findElementByXPath(xpath) {
		   return this.driver.findElementByXPath(xpath);
		} 
		
		
		function getVisible() {
		  return this.driver.getVisible();
		} //boolean
		
		
		function setVisible(visible){
		  this.driver.setVisible( javacast("boolean",visible) );
		} //void 
		
		
		function quit() {
		  this.driver.quit();
		}  //void 
		
		
		function navigate(location){
		 //throwNotImplementedException("navigate ... not shure best how to implement this");	
		 this.driver.get(location);
		} //org.openqa.selenium.WebDriver$Navigation 
		
		
		//Not tested.
		function setProxy(proxyUrl, port){
		 this.driver.setProxy(proxyUrl, port);
		} //void 
		
		
		//uthenticateAs(String username, String password, String host, int port, String clientHost, String domain) 
		function authenticateAs(username,password, host, port, clientHost, domain){
		  this.driver.authenticateAs(username,password, host, port, clientHost, domain);
		 }
		
		
		function switchTo(){
		  return this.driver.switchTo();
		} //org.openqa.selenium.WebDriver$TargetLocator 
		
		
		//To Do: Move these to FireFox subclass
		function setFireFoxPath(path){
		  createObject("java","java.lang.System").setProperty("webdriver.firefox.bin", path);
		}
		
		function setUseExistingFireFoxInstance(toggle){
		  createObject("java","java.lang.System").setProperty("webdriver.firefox.useExisting", toggle);
		}
		
		
		//To Do's ......................
		function findElements(by){  
			throwNotImplementedException("findElements(by)");
		} // org.openqa.selenium.By :: org.openqa.selenium.WebElement
				
		function manage(){
		 throwNotImplementedException("manage");
		} //org.openqa.selenium.WebDriver$Options 
		
 
  </cfscript>


 <cffunction name="throwNotImplementedException">
   <cfargument name="methodName" />
   <cfthrow type="org.mxunit.exception.NotImplementedException" 
            message="The method you called has not yet been implemented" 
            detail="Method name: #arguments.methodName#">
 </cffunction>


	
</cfcomponent>