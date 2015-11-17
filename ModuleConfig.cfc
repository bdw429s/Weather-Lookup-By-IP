component {

	// Module Properties
	this.title 				= "Weather By IP";
	this.author 			= "Brad Wood";
	this.webURL 			= "http://www.coldbox.org/forgebox/view/Weather-lookup-by-IP";
	this.description 		= "Look up local weather by IP address.";
	this.version			= "1.0.0";
	this.modelNamespace		= "Weather";

	function configure(){
		
  		settings = {
  			APPID = ''
  		};
		
		// Look for module setting overrides in parent app and override them.
		var coldBoxSettings = controller.getSettingStructure();
		if( structKeyExists( coldBoxSettings, 'weather-lookup-by-ip' ) 
			&& structKeyExists( coldBoxSettings[ 'weather-lookup-by-ip' ], 'settings' ) ) {
			structAppend( settings, coldBoxSettings[ 'weather-lookup-by-ip' ][ 'settings' ], true );
		}
				
	}

}