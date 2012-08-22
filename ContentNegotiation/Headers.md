<a name="ContentNegotiation_Headers"></a>

Accepts and Content-Type Headers
================================

**As**	an External Application<br/>
**I want to**	control the output resource representation using Accept Headers<br/>
**So that I can** can get a representation that I can process<br/>
		
> **rationale** This allows an external application to get resources using a specific representation that may be easier to process.

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url<br/>
**When**	I set the header: Accept=text/html <br/>
**Then**  	I obtain a resource with Content-Type=text/html<br/>

Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url<br/>
**When**	I set the header: Accept=application/json <br/>
**Then**  	I obtain a resource with Content-Type=application/json<br/>
	
Acceptance Criteria
-------------------

**Given**	list a resource urls and for each url<br/>
**When**	I set the header: Accept=application/rip_me (or any invalid mime type) <br/>
**Then**  	I get a 406 error<br/>
	
