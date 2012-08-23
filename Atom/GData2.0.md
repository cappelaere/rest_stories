<a name="Atom_GData2.0"></a>

Atom Feeds can be extended using Gdata 2.0 protocol
===================================================

**As**	a server    
**I want to** extend the ATOM protocol using GData 2.0  
**So that I** can publish my own resources in a meaningful way  
		
> **rationale** This allows an external Application to have access to the resources in a meaningful way without having to parse the HTML content

Acceptance Criteria
-------------------

**Given**	list of resources, for each resource end point  
**When**	I use GET with an application/atom+xml Accept Header  
**Then**  	feed uses etag attribute  
**And**    	feed uses category tag and proper accessible schema  
**And**		feed uses OpenSearch namespace and attributes  
**And** 	entries use etag attribute  
**And** 	entries use category tag and proper accessible format  