<cfcomponent output="false" extends="WebDriver">
  <cfscript>
   /*
    to do: instead of maintaining a separate java class just to handle authentication,
    use reflectiion to the the protected method, getWebClient() to get the client
    and set it's authentication properties. 
  */
  
  
    function init(){
  	  this.driverType = "HtmlUnit";
	    this.driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
      return this;
    }
    
    
   function isJavascriptEnabled(){
	   return this.driver.isJavascriptEnabled();
	 } // boolean 
		
		
		function setJavascriptEnabled(enable){
		  this.driver.setJavascriptEnabled(enable);
		} //void 
		
  </cfscript>

</cfcomponent>