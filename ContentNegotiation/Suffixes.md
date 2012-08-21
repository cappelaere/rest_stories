Allow Representation Suffixes
=============================

**As**	an External User<br/>
**I want to**	control the output resource representation using additional suffixes to the url<br/>
**So that I can** can get a representation that I can process without using Accept Headers<br/>
		
> **rationale** This allows an external user to get specific resource representation directly from the browser without using Accept headers

Acceptance Criteria
===================

**Given**	list a resource urls and for each url<br/>
**When**	I add .html extension to the URL <br/>
**Then**  	I obtain a resource with Content-Type=text/html<br/>

Acceptance Criteria
===================

**Given**	list a resource urls and for each url<br/>
**When**	I add .json  extension to the URL<br/>
**Then**  	I obtain a resource with Content-Type=application/json<br/>
	
Acceptance Criteria
===================

**Given**	list a resource urls and for each url<br/>
**When**	I set .xyz or invalid extension to the URL<br/>
**Then**  	I get a 406 error<br/>