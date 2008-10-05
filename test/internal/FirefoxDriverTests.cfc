<cfcomponent output="false" extends="BaseWebDriverTests">
    <cfscript>

  /*
   @BeforeTest/@AfterTest
  */

    function setUp(){
    	setDriver("firefox");
    	driver.setUseExistingFireFoxInstance(true);
      
    }

    function tearDown(){
      driver.close();
      //I only want to do this after all tests are run, not on each test.
    }

    </cfscript>

</cfcomponent>