%dw 2.0
output application/java
---
payload map {
	 tasAssetId: $
   	,apiType: 'TestHistory'
   	,action: 'U'
   	,integrationStatus: 'I'
   	,comments: 'Synced from CDC Asset TestHistory using CDC load flow'
   	,createdDate: now() as LocalDateTime
	,createdBy: 'tas-sf-asset-cdc-load-flow'
	,jobName: correlationId
} orderBy $.tasAssetId