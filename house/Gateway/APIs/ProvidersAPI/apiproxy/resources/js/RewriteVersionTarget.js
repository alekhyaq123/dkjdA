//Rewrite the target uri to map product list
flow.setVariable("target.url","http://maps.googleapis.com/maps/api/geocode/xml"+ "?" +flow.getVariable("request.querystring"));

