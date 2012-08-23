<a name="Atom_Atom"></a>

Atom Feeds available for lists of resources
===========================================

**As** a user  
**I want to** access list of resources using ATOM Format  
**So that I** can subscribe to and visualize the data feed in browser  
		
> **rationale** This allows a user to subscribe to particular data feed using a familiar NewsFeed Reader.  If the feed is published to an aggregator, the user can receive notifications on changes.

Acceptance Criteria
-------------------

**Given**	list of resources, for each resource end point  
**When**	I use GET with an application/atom+xml Accept Header  
**Then**  	server returns application/atom+xml content  
**And**    it returns a valid feed  
**And**	I can see that the feed is published to an aggregator  