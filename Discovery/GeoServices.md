<a name="Discovery_GeoServices"></a>

GeoServices API Discovery Document
==================================

**As** an External Application  
**I want to**	find API Discovery Document  
**So that I can** can get knowledge of API  
		
> **rationale** This allows an application to get context information to access API

Acceptance Criteria
-------------------

**Given**	link to Catalog document is accessible  
**When**	I follow the link  
**Then**  	Catalog Document is accessible  
**And**  	Catalog Document should be accessible with proper headers as well  
	
Acceptance Criteria
-------------------

**Given**	link to API Discovery document is accessible  
**When**	I follow the link  
**Then**  	document should contain service metadata  
**Then**  	document should contain service collections  
**Then**  	document should contain folders  
	
Acceptance Criteria
-------------------

**Given**	link to API Discovery document is accessible  
**When**	I follow the link  
**Then**  	document should point to service catalogs  
**Then**  	services should have their own description documents  

Acceptance Criteria
-------------------

**Given**	link to Service document is accessible  
**When**	I follow the link  
**Then**  	service description is available  
**Then**  	service description document should contain description  
**Then**  	service description document should contain list of published resources  
**Then**  	service description document should contain list of schemas  
**Then**  	service description document should contain security information  

Acceptance Criteria
-------------------

**Given**	link to folder document is accessible  
**When**	I follow the link  
**Then**  	service description is available  
**Then**  	folders should have their own description documents  
