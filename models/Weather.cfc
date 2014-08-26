<cfcomponent name="Weather" hint="I determine a user's weather by their IP address" output="false" singleton>
	<cfproperty name="GeoLocation" inject="GeoLocation@GeoLocation">
	
	<cffunction name="getWeather" output="false" access="public" returntype="any" hint="Call me to get the weather details on your user.">
		<cfargument name="IPAddress"	type="string"	required="false" default="">
		
		<cfset var location = GeoLocation.getLocation( arguments.IPAddress )>
		<cfset var weather = {}>
		
		<cfif int(location.latitude) and int(location.longitude) >
		
			<cfhttp method="get" url="http://api.openweathermap.org/data/2.5/weather?lat=#location.latitude#&lon=#location.longitude#&units=imperial" timeout="10" result="weather">
			
			<cfreturn deSerializeJSON( weather.fileContent )>	
			
		</cfif>
		
		<cfreturn structNew()>
		
	</cffunction>
	
</cfcomponent>