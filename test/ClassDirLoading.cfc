<cfcomponent  extends="mxunit.framework.TestCase">
  <cfscript>
  /*
  function testListOfJars(){
    debug(getDir()); 
  }
  
  function testLoadClasses(){
    var loader = loadClasses();   
  }  
    
  */
  
   
  function testLoadIEWebdriver(){
   by = loader.create("org.openqa.selenium.By");
   driver = loader.create("org.openqa.selenium.ie.InternetExplorerDriver");
   query = loader.create("org.openqa.selenium.ie.InternetExplorerElement");
    driver.get("http://google.com");
    query = driver.findElement(by.name("q"));
    
    query.sendKeys( javacast("string","unit test"));
    
    query.submit();
    //driver.close();
   
   
   //dump(query);
   //dump(driver);
   
  // exp = "Webdriver string?";
   
    
   //s = createObject("java","java.lang.String").init("Webdriver");
  // a = arrayNew(1); 
   //charSequence = s.subsequence(0,3);
   //debug(charSequence); 
   //dump(query); 
  // args = arrayNew(1);
   //args[1] = charSequence;
  // q = query.getClass().getDeclaredMethods();
   
   //q.setAccessible(true);
   //q.invoke();
   
   //query.sendKeys( exp );
	 //query.submit();
	// driver.close();
		
  }  
  
  
  function testLoadFFWebdriver(){
    driver = loader.create("org.openqa.selenium.firefox.FirefoxDriver");
     createObject("java","java.lang.System").setProperty("webdriver.firefox.bin", "C:\\Programs\\Mozilla Firefox\\firefox.exe");
     createObject("java","java.lang.System").setProperty("webdriver.firefox.profile", "Webdriver");
     //createObject("java","java.lang.System").setProperty("webdriver.firefox.useExisting", "true");
    //webdriver.firefox.profile ... profile name
    //webdriver.firefox.useExisting
    debug(driver);
    //debug(createObject("java","java.lang.System"));
    //dump(driver);
    driver.get("http://google.com");
  }  
  
  
  function testLoadHtmlUnitWebdriver(){
    driver = loader.create("org.openqa.selenium.htmlunit.HtmlUnitDriver");
    debug(driver);
    driver.setJavascriptEnabled(false);
    debug(driver.isJavascriptEnabled());
    //dump(driver);
    driver.get("http://google.com");
  }  
    
    
    function dumpServerClasses(){
    	dump(loader);
     //dump(server);
    }
    
    
  /* ------------------------------- */
  function setUp(){
    loader = loadClasses();   
  }
  
  
  </cfscript>
  
  <!--- 
  
    These are targetted for system under test.
   --->
  
  <cffunction name="loadClasses" access="private">
    <cfscript>
     var paths = arrayNew(1);
     var dir =  getDir();
     var loader = "";
     var i = 0;
     for(i=1; i lte dir.recordCount; i = i +1){
       paths[i] = dir["directory"][i] & "\" & dir["name"][i];    
     }
     loader = createObject("component", "cfwebdriver.javaloader.JavaLoader").init(paths,true);
     loader.initUseJavaProxyCfc();
     return loader;
    </cfscript>
  </cffunction>
  
  <cffunction name="getDir" access="private">
    <cfset dir = expandPath("/cfwebdriver/lib") &  ""/>
    <cfdump var="#dir#">
    <cfdirectory name="jars" action="list" directory="#dir#" filter="*.jar" recurse="false" />
    <cfreturn jars />
  </cffunction>
  
</cfcomponent>


