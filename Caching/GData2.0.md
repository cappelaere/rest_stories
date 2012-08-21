GData 2.0 Caching Headers
=========================

**As**	a web service<br/>
**I want to**	pay attention to caching header information<br/>
***So that I can** avoid sending superfluous data<br/>
		
> **rationale** This reduces overall bandwidth.
	
Acceptance Criteria
===================

**Given**	http transaction<br/>
**When**	using GData 2.0 protocol <br/>
**Then**  	I should use GData-Version 2.0 in headers<br/>
**Then**  	I should use ETag in headers<br/>
**Then**  	I should use Last-Modified in headers<br/>
**Then**  	I should return a 304 Not Modified if using If-None-Match<br/>
**Then**  	I should return a 304 Not Modified if using Last-Modified<br/>
**Then**  	I should support Conditional Replace with If-Match: in headers<br/>
**Then**  	I should support Conditional Replace with If-Match: in headers<br/>
**Then**  	I should support Override Replace with If-Match: * in headers<br/>
**Then**  	I should support Conditional Delete with If-Match: in headers<br/>
**Then**  	I should support Delete with If-Match: * in headers<br/>