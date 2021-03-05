%dw 2.0
output application/java
---
{
	 tasAssetId: payload.AssetID
   	,apiType: 'Test History'
   	,action: if (payload.operation == 5) "U" else "D"
   	,integrationStatus: 'I'
   	,comments: 'Synced from CDC Asset using CDC load flow'
   	,createdDate: now() as LocalDateTime
	,createdBy: 'cdc-tas-sf-asset-details-flow'
	,jobName: correlationId
}

	
