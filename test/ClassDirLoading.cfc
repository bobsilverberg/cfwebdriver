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
    driver = createObject("java","org.openqa.selenium.firefox.FirefoxDriver");
    By = createObject("java","org.openqa.selenium.By");
    // createObject("java","java.lang.System").setProperty("webdriver.firefox.bin", "C:\\Programs\\Mozilla Firefox\\firefox.exe");
    // createObject("java","java.lang.System").setProperty("webdriver.firefox.profile", "Webdriver");
     //createObject("java","java.lang.System").setProperty("webdriver.firefox.useExisting", "true");
    //webdriver.firefox.profile ... profile name
    //webdriver.firefox.useExisting
    debug(driver);
    
    //debug(createObject("java","java.lang.System"));
    //dump(driver);
    driver.get("http://www.google.com/search?hl=en&q=mxunit&btnG=Google+Search&aq=f&oq=");
    q = driver.findElement(By.name("q"));
    debug(q);
    debug(q.getText());
    //q.sendKeys("mxunit");
    //q.submit();   
    }  
  
  

  
  
  function testLoadHtmlUnitFromWebInf(){
    wc = createObject("java","com.gargoylesoftware.htmlunit.WebClient").init();
    wc.setJavaScriptEnabled(false);
    dump(wc);
    page = wc.getPage("http://mxunit.org/");
    dump(page.getTitleText());
    assertEquals("mxunit - unit test framework and eclipse plugin for adobe coldfusion",page.getTitleText());
  }  
  
  
  function testLoadMozillaJSAgent(){
   js = createObject("java","org.mozilla.javascript.Context");
   debug(js);
  }
  
  
  function testLoadWebdriverFromWebInf(){
    driver = createObject("java","org.openqa.selenium.htmlunit.HtmlUnitDriver");
    debug(driver);
    driver.setJavascriptEnabled(true);
    debug(driver.isJavascriptEnabled());
    //dump(driver);
    driver.get("http://google.com");
  }  
    
  
  
  

    
    
    function dumpServerClasses(){
    //	dump(loader);
     //dump(server);
    }
    
    
  /* ------------------------------- */
  function setUp(){
   //loader = loadClasses();   
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
       paths[i] = dir["directory"][i] & "/" & dir["name"][i];    
     }
     loader = createObject("component", "cfwebdriver.javaloader.JavaLoader").init(paths,true);
     //loader.initUseJavaProxyCfc();
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


