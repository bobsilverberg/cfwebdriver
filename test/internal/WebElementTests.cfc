<cfcomponent  extends="mxunit.framework.TestCase">

  <cfscript>


	//To Do ---------------------------------------
	
	function testinit(){
   fail("to do");
  }
    
    //TO DO: Accept int as 2nd param, which indicates mouse and keyboard events - KEYPRESS.KEYDOWN ...
  function testsendKeys(){
	  fail("to do");
	} 
    
  function testsubmit() {
  fail("to do");
  }  
  
  function testgetText() {
  fail("to do");
  } //}java.lang.String 
  
  function testclear() {
    fail("to do");
  } //}void 
	
	
	function testclick() {
	 fail("to do");
	} //}void 
	
	
	function testtoggle() {
	fail("to do");
	} //boolean 
	
	
	function testsetSelected() {
	  fail("to do");
	} //}void
	
	
	function testisEnabled() {
	  fail("to do");
	} //}boolean
	
	 
	function testisSelected() {
	
	} //}boolean 
	
	function testdragAndDropBy(){fail("to do");} //}(int, int) void 
	function testdragAndDropOn(){fail("to do");} //}(org.openqa.selenium.RenderedWebElement) void 
	function testfindElement(){fail("to do");} //}(org.openqa.selenium.By) org.openqa.selenium.WebElement 
	function testfindElements(){fail("to do");} //}(org.openqa.selenium.By) java.util.List 
	function testgetAttribute(){fail("to do");} //}(java.lang.String) java.lang.String 
	function testgetChildrenOfType(){fail("to do");} //}(java.lang.String) java.util.List 
	function testgetLocation() {fail("to do");} //}ava.awt.Point 
	function testgetSize() {fail("to do");} //}java.awt.Dimension 
	
	function testgetValue() {fail("to do");} //}java.lang.String 
	function testgetValueOfCssProperty(){fail("to do");} //}(java.lang.String) java.lang.String 
	function testisDisplayed() {fail("to do");} //}boolean 
	
  

 //-------------------------Override as needed------------------------------------//

  function setUp(){
   // driver = createObject("component","cfwebdriver.WebDriver");
   // driver = driver.newInstance("htmlunit");
   // driver.get("file:///home/billy/webapps/cfwebdriver/test/fixture/MXUnitBlog.html");
    
  }
  
  function tearDown() {}

 </cfscript>
</cfcomponent>
