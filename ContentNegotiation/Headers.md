<a name="ContentNegotiation_Headers"></a>

Accepts and Content-Type Headers
================================

**As**	an External Application  
**I want to**	control the output resource representation using Accept Headers  
**So that I can** can get a representation that I can process  
		
> **rationale** This allows an external application to get resources using a specific representation that may be easier to process.

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I set the header: Accept=text/html   
**Then**  	I obtain a resource with Content-Type=text/html  

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I set the header: Accept=application/json   
**Then**  	I obtain a resource with Content-Type=application/json  
	
Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url  
**When**	I set the header: Accept=application/rip_me (or any invalid mime type)   
**Then**  	I get a 406 error  
	
