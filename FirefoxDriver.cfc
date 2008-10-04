<cfcomponent output="false" extends="WebDriver">
  
  <cfscript>
    
    function init(){
     this.driverType = "Firefox";
     this.driver = createObject("java","org.openqa.selenium.firefox.FirefoxDriver");
     return this;
    }
    

		function setFireFoxPath(path){
		  createObject("java","java.lang.System").setProperty("webdriver.firefox.bin", path);
		}
		
		function setUseExistingFireFoxInstance(toggle){
		  createObject("java","java.lang.System").setProperty("webdriver.firefox.useExisting", toggle);
		}
  </cfscript>

</cfcomponent>