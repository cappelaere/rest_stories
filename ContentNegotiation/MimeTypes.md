<a name="ContentNegotiation_MimeTypes"></a>

Custom Mime Types
=================

**As**	an External Application  
**I want to**	use Custom Mime Types for Content Negotiation  
**So that I can** can signify my acceptance of the interface and get proper resource representation  
		
Acceptance Criteria
-------------------

**Given**	desire to use Content Negotiation to constrain the interface  
**When**	I use Mime-types in Accept headers to determine the proper resource representation to retrieve  
**Then**  	I use one of the existing IANA-approved mime-types that service may support  
		
Acceptance Criteria
-------------------

**Given**	desire to use custom media type for Content Negotiation to constrain the interface  
**When**	I use custom Mime-type in Accept headers to determine the proper resource representation to output  
**Then**  	I use existing IANA-approved mime-types  
**And**  	I use a profile information attribute  
**And**  	I use a version information attribute  
**And**  	I use a describedby information attribute to point to an existing schema or profile document  	
		
> **rationale** Content negotiation is important in some cases to specify a particular resource representation.  The danger is to expand the concept to domain specific content.  Some organizations have been pushing for custom media types of the form: application/vnd.myapp+json.  This form extends the defined application/json mime-type and specifies the vendor-domain specific content vnd.myapp.  This is problematic and turns out to hurt more than help content negotiation. It requires developers to change their browser settings to accept the new type and may require IT administrators to change firewall/proxy settings (which my cause some friction for highy secured environments).  It will not scale easily.  An alternate form may be used to alleviate those problems but does not seem to be of much value either if the application provides a schema or profile (which it should).  This alternate form is, using a json example: application/json; profile='vnd.myapp'; version='1.0'; describedby='http://myapp.com/schema.rnc'.  It is highly likely that the schema and/or profile will contain version information and all domain specific content.  This schema and/or profile will have been accessed in the discovery phase making that over-specification unnecessary and overly complex with no value added.