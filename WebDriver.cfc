<cfcomponent displayname="WebDriver" output="false">


	<cffunction name="newInstance" access="public" output="false" returntype="Any">
		<cfargument name="driverType" type="string" hint="htmlunit,ff,firefirefox,ie internet explorer" />
    <!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>

	<cffunction name="get" access="public" output="false" returntype="Any">
		<cfargument name="url" type="string" hint="The URL to retrieve" />
    <!--- TODO: Implement Method --->
		<cfreturn />
 	</cffunction>
  
  <cfscript>
   function addCookie(){
   
   }
   
   function getCookies(){
   
   }
  </cfscript>

	<cffunction name="findById" access="package" output="false" returntype="Any">
		<!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>

	<cffunction name="findByName" access="package" output="false" returntype="Any">
		<!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>

	<cffunction name="findByXPath" access="package" output="false" returntype="Any">
		<!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>

	<cffunction name="navigate" access="package" output="false" returntype="Any">
		<!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>

	<cffunction name="swicthTo" access="package" output="false" returntype="Any">
		<!--- TODO: Implement Method --->
		<cfreturn />
	</cffunction>
</cfcomponent>