%dw 2.0
output application/java
---
{
	
	"tasId":payload.TASId,
	"objectType": payload.ObjectType,
	"action" : payload.Operation,
	"documentDescription": payload.DocumentDescription,
	"documentNameWithPath": payload.DocumentNameWithPath,
	"integrationStatus": 'I' ,
	"createdDate": now() as LocalDateTime,
	"createdBy":"Mule_APP"
	
}