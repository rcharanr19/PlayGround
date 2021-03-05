%dw 2.0
output application/java
---
payload map {
	 tasAssetId: $
   	,apiType: 'Mechanical'
   	,action: 'U'
   	,integrationStatus: 'I'
   	,comments: 'Synced from CDC Asset using CDC load flow'
   	,createdDate: now() as LocalDateTime
	,createdBy: 'tas-sf-asset-cdc-load-flow'
	,jobName: correlationId
} orderBy $.tasAssetId