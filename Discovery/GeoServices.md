<a name="Discovery_GeoServices"></a>

GeoServices API Discovery Document
==================================

**As** an External Application<br/>
**I want to**	find API Discovery Document<br/>
**So that I can** can get knowledge of API<br/>
		
> **rationale** This allows an application to get context information to access API

Acceptance Criteria
-------------------

**Given**	link to Catalog document is accessible<br/>
**When**	I follow the link<br/>
**Then**  	Catalog Document is accessible<br/>
**And**  	Catalog Document should be accessible with proper headers as well<br/>
	
Acceptance Criteria
-------------------

**Given**	link to API Discovery document is accessible<br/>
**When**	I follow the link<br/>
**Then**  	document should contain service metadata<br/>
**Then**  	document should contain service collections<br/>
**Then**  	document should contain folders<br/>
	
Acceptance Criteria
-------------------

**Given**	link to API Discovery document is accessible<br/>
**When**	I follow the link<br/>
**Then**  	document should point to service catalogs<br/>
**Then**  	services should have their own description documents<br/>

Acceptance Criteria
-------------------

**Given**	link to Service document is accessible<br/>
**When**	I follow the link<br/>
**Then**  	service description is available<br/>
**Then**  	service description document should contain description<br/>
**Then**  	service description document should contain list of published resources<br/>
**Then**  	service description document should contain list of schemas<br/>
**Then**  	service description document should contain security information<br/>

Acceptance Criteria
-------------------

**Given**	link to folder document is accessible<br/>
**When**	I follow the link<br/>
**Then**  	service description is available<br/>
**Then**  	folders should have their own description documents<br/>
