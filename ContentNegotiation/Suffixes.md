<a name="ContentNegotiation_Suffixes"></a>

Allow Representation Suffixes
=============================

**As**	an External User  
**I want to**	control the output resource representation using additional suffixes to the url  
**So that I can** can get a representation that I can process without using Accept Headers  
		
> **rationale** This allows an external user to get specific resource representation directly from the browser without using Accept headers

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I add .html extension to the URL   
**Then**  	I obtain a resource with Content-Type=text/html  

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I add .json  extension to the URL  
**Then**  	I obtain a resource with Content-Type=application/json  
	
Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I set .xyz or invalid extension to the URL  
**Then**  	I get a 406 error  