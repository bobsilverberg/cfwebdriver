<cfcomponent output="false" extends="BaseWebDriverTests">
    <cfscript>
    this.isInitialized = false;
  /*
   @BeforeTest/@AfterTest
  */

    
    
    function setUp(){
    	if(!this.isInitialized){
    	  this.isInititialized = true;
    	  setDriver("firefox");
    	}
    	driver.setUseExistingFireFoxInstance(true);
      
    }

    function tearDown(){
      //driver.close();
      //I only want to do this after all tests are run, not on each test.
    }

    </cfscript>

</cfcomponent>