<cfcomponent output="false" extends="WebDriver">
  
  <cfscript>
    
    function init(){
     this.driverType = "Firefox";
     this.driver = createObject("java","org.openqa.selenium.firefox.FirefoxDriver");
     return this;
    }
    
    function get(url){
     try{
     	super.get(arguments.url);
     }
     catch(java.lang.RuntimeException e){
       throwException("org.mxunit.cfwebdriver.FirefoxLoadFailureException",
                       "Failed to load Firefox",
                       "If Firefox is not located in C:/Program Files/Mozilla Firefox/, please set the path to the Firefox executable using driver.setFirefoxPath(...)");
     }
    }

	function setFireFoxPath(path){
	  createObject("java","java.lang.System").setProperty("webdriver.firefox.bin", path);
	}
	
	function setUseExistingFireFoxInstance(toggle){
	  createObject("java","java.lang.System").setProperty("webdriver.firefox.useExisting", toggle);
	}
  </cfscript>

</cfcomponent>