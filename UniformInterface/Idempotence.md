<a name="UniformInterface_Idempotence"></a>

Idempotence
===========

**As**	an External Application  
**I want to**	access resources using limited HTTP verbs  
**So that I can** can reduce interface complexity  
		
> **rationale This allows an application to access resources in a limited and consistent manner

Acceptance Criteria
-------------------

**Given**	link to API Discovery document  
**When**	I exercise API  
**Then**  	it follows idempotence rules  