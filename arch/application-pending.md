
### Application needs extra documents to verify identity
ApplicationManualReviewAdapterDelegate
if pendingStatus?.nextStep is PendingStatus.Step.AdditionalReviewRequired

### Application is submitted, still pending for review
ApplicationSubmittedAdapterDelegate 
if pendingStatus?.nextStep is PendingStatus.Step.ApplicationSubmitted