%dw 2.0
output application/java
---
{
	 TASRepInvoiceHdrID: payload.RepInvoiceHdrID
   	,apiType: 'RepairHistory'
   	,action: if (payload.operation == 5) "U" else "D"
   	,integrationStatus: 'I'
   	,comments: 'Synced from CDC Repair History using CDC load flow'
   	,createdDate: now() as LocalDateTime
	,createdBy: 'tas-sf-repair-history-cdc-load-flow'
	,jobName: correlationId
} 