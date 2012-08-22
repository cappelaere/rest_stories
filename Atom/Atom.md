<a name="Atom_Atom"></a>

Atom Feeds available for lists of resources
===========================================

**As** a user<br/>
**I want to** access list of resources using ATOM Format<br/>
**So that I** can subscribe to and visualize the data feed in browser<br/>
		
> **rationale** This allows a user to subscribe to particular data feed using a familiar NewsFeed Reader.  If the feed is published to an aggregator, the user can receive notifications on changes.

Acceptance Criteria
-------------------

**Given**	list of resources, for each resource end point<br/>
**When**	I use GET with an application/atom+xml Accept Header<br/>
**Then**  	server returns application/atom+xml content<br/>
**And**    it returns a valid feed<br/>
**And**	I can see that the feed is published to an aggregator<br/>