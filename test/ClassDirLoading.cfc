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
  
   //Naturally only works on win
  function testLoadIEWebdriver(){
   by = createObject("java","org.openqa.selenium.By");
   driver = createObject("java","org.openqa.selenium.ie.InternetExplorerDriver");
   query = createObject("java","org.openqa.selenium.ie.InternetExplorerElement");
   driver.get("http://google.com");
    query = driver.findElement(by.name("q"));
    keys = arrayNew(1);
    keys[1] = "unit test";   
    query.sendKeys( keys );
    
    query.submit();
  	
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
    driver.get("http://www.google.com/");
    q = driver.findElement(By.name("q"));
    keys = arrayNew(1);
    keys[1] = "mxunit";
    q.sendKeys(keys);
    debug(q);
    q.submit();
    q = driver.findElement(By.linkText("MXUnit Blog"));
    q.click();
    assertEquals("MXUnit Blog",driver.getTitle(),"title not ok");   
    driver.close();
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
    by = createObject("java","org.openqa.selenium.By");
    debug(driver);
    driver.setJavascriptEnabled(true);
    debug(driver.isJavascriptEnabled());
    //dump(driver);
    driver.get("http://google.com");
    debug("driver.getTitle() == " & driver.getTitle());
    q = driver.findElement(By.name("q"));
    //debug(driver.getPageSource());
    keys = arrayNew(1);
    keys[1] = "mxunit";
    q.sendKeys(keys);
    //q = driver.findElement(By.linkText("MXUnit Blog"));
    q.click();
    debug(driver.getPageSource());
    debug(driver.getTitle());
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
    
</cfcomponent>


