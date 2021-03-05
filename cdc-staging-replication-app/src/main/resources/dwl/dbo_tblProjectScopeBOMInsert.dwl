%dw 2.0
output application/java
---
 {
	 tasProjectScopeId: payload.ProjectScopeID
   	,apiType: 'ProjectBOM'
   	,action: if (payload.operation == 5) "U" else "D"
   	,integrationStatus: 'I'
   	,comments: 'Synced from CDC Project BOM using CDC load flow'
   	,createdDate: now() as LocalDateTime
	,createdBy: 'tas-sf-projectBOM-cdc-load-flow'
	,jobName: correlationId
} 