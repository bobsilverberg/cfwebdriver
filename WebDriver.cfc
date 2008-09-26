/**

  WebDriver
  @author bill
  @description ColdFusion wrapper for webdriver (http://code.google.com/p/webdriver)

*/

<cfcomponent displayname="WebDriver" output="false">

  
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
	
	
	
	   function get(url) {
	     this.driver.get(arguments.url);
	   }  
	
	
	
        function close() {
          this.driver.close();
        }
         
		function executeScript() //java.lang.String, java.lang.Object[] :: java.lang.Object
		{
		  throwNotImplementedException("executeScript");
		}
		
		 
		function findElement(by){
		  var element = createObject("component","WebElement");
		  this.webelement = this.driver.findElement(this.by.name(by));
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
		
		
		function findElementByLinkText(linkText) {
		  return this.driver.findElementByLinkText(linkText);
		}  //)(java.lang.String) java.util.List 
		
		
	    function isJavascriptEnabled(){
	      return this.driver.isJavascriptEnabled();
	    } // boolean 
		
		
		function setJavascriptEnabled(enable){
		  this.driver.setJavascriptEnabled(enable);
		} //void 
		
		
		function findElementsById(id) {
		  return this.driver.findElementsById(id);
		}  //)(java.lang.String) java.util.List 
		
		
		//To Do's ......................
		function findElements(by){} // org.openqa.selenium.By :: org.openqa.selenium.WebElement 
		
		
		function findElementsByName(name) {}  //)(java.lang.String) java.util.List 
		function findElementsByXPath(xpath) {} //)(java.lang.String) java.util.List 
		
		
		
		
		function getVisible() {} //boolean 
	
		function manage(){} //org.openqa.selenium.WebDriver$Options 
		function navigate(){} //org.openqa.selenium.WebDriver$Navigation 
		function quit() {}  //void 
		
		function setProxy(proxyUrl, port){} //void 
		function setVisible(visible){} //void 
		function switchTo(){} //org.openqa.selenium.WebDriver$TargetLocator 


 
  </cfscript>


 <cffunction name="throwNotImplementedException">
   <cfargument name="methodName" />
   <cfthrow type="org.mxunit.exception.NotImplementedException" 
            message="The method you called has not yet been implemented" 
            detail="Method name: #arguments.methodName#">
 </cffunction>


	
</cfcomponent>