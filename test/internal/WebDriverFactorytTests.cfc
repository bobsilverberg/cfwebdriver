<cfcomponent  extends="mxunit.framework.TestCase">

  <cfscript>
  
  drivers = "firefox,htmlunit,ie,chrome,safari";
  
  function testNewInstances () {
    var i = 0;
    var driver = "";
    var driverFactory = "";
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("firefox");
    debug(driver.getType());
    
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("htmlunit");
    debug(driver.getType());
    
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("ie");
    //debug(driver.getType());
    
    driver = createObject("component","cfwebdriver.WebDriver").newInstance("chrome");
    //debug(driver.getType());
    
     driver = createObject("component","cfwebdriver.WebDriver").newInstance("safari");
    //debug(driver.getType());
    
    for(i=1; i<=listLen(drivers);i++){
    	//driver = createObject("component","cfwebdriver.WebDriver").newInstance(listGetAt(drivers,i));
    	//debug(driver.getType());
    	
    }
  }
  
 
 </cfscript>
</cfcomponent>
