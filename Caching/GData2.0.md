<a name="Caching_GData2.0"></a>

GData 2.0 Caching Headers
=========================

**As**	a web service  
**I want to**	pay attention to caching header information  
**So that I can** avoid sending superfluous data  
		
> **rationale** This reduces overall bandwidth.
	
Acceptance Criteria
-------------------

**Given**	http transaction  
**When**	using GData 2.0 protocol   
**Then**  	I should use GData-Version 2.0 in headers  
**Then**  	I should use ETag in headers  
**Then**  	I should use Last-Modified in headers  
**Then**  	I should return a 304 Not Modified if using If-None-Match  
**Then**  	I should return a 304 Not Modified if using Last-Modified  
**Then**  	I should support Conditional Replace with If-Match in headers  
**Then**  	I should support Conditional Replace with If-Match in headers  
**Then**  	I should support Override Replace with If-Match: * in headers  
**Then**  	I should support Conditional Delete with If-Match in headers  
**Then**  	I should support Delete with If-Match: * in headers  