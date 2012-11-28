JSONmessage= flow.getVariable("response.content");

callback = flow.getVariable("request.queryparam.callback");
Callbackmessage = callback + "(" + JSONmessage + ")";
flow.setVariable("response.content",Callbackmessage);

acceptHeader = flow.getVariable("request.header.Accept");

if (acceptHeader == "application/javascript" || acceptHeader == "text/javascript")
	{ 
		flow.setVariable("request.header.Content-Type", acceptHeader);
	}
  
else 
    {
		flow.setVariable("request.header.Content-Type","application/javascript");
	}