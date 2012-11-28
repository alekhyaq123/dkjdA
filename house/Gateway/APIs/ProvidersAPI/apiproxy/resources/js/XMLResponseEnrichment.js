response1 = flow.getVariable("response.content");
response2 = flow.getVariable("additional.response");
finalResponse = "<ApigeeMashup>"+response1+response2+"</ApigeeMashup>";

flow.setVariable("response.content",finalResponse);

flow.setVariable("flow.temp","Temp var");
