Atom Feeds can be extended using Gdata 2.0 protocol
===================================================

**As**	a server<br/>
**I want to** extend the ATOM protocol using GData 2.0<br/>
**So that I** can publish my own resources in a meaningful way<br/>
		
> **rationale** This allows an external Application to have access to the resources in a meaningful way without having to parse the HTML content

Acceptance Criteria
===================

**Given**	list of resources, for each resource end point<br/>
**When**	I use GET with an application/atom+xml Accept Header<br/>
**Then**  	feed uses etag attribute<br/>
**And**    	feed uses category tag and proper accessible schema<br/>
**And**		feed uses OpenSearch namespace and attributes<br/>
**And** 	entries use etag attribute<br/>
**And** 	entries use category tag and proper accessible format<br/>