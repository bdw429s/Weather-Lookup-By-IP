# Weather Lookup by IP

8/25/2014

This is a ColdBox Module that will retrieve basic weather information for you based on your user's IP address using the API available at http://openweathermap.org/current

```js
data = getInstance( 'Weather@Weather' ).getWeather();
```

Drop the module inside your modules directory by running `install Weather-Lookup-By-IP` from CommandBox and access it via `getModel("Weather@Weather")`.

This module depends on `geolocation-lookup-by-ip` which will automatically be installed if you  use CommandBox to install this module.

This code comes with no warranties, promises, or hot fudge sundaes.  It is known to the state of California to cause cancer.

Brad Wood
* brad@bradwood.com
* http://www.codersrevolution.com
