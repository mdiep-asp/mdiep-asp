1. Once user trying to login we are making request to “api/v1/user/overview” ( search AspirationUserApi.kt)
2. from this response we are receiving “pendingProductApplications” tag (search class UserOverviewResponse)
3. when (PendingApplication.status.alias == PendingApplication.Alias.PROCESSING) we are assuming user has to pass additional review through documents verification, Onfido (search UserAccountOverviewsToProductsOverviewsMapper.kt)
4. we are passing user to UnfinishedApplicationsScreen and displaying a AdditionalReview tile.
5. Once user clicks on tile we are triggering onfidoServiceUseCase.getOnfidoApplicantId() (see UnfinishedApplicationsPresenter.kt) and passing received Id (from aspiration backend, “v2/account-approval/account_approval.Onfido/CreateApplicant”) to the onfido SDK integated in app (see UnfinishedAppliationsScreen, line 125)
6. after successful submitting we are triggering OnfidoServiceUseCase.applyCheck() ( endpoint “v2/account-approval/account_approval.Onfido/CreateCheck”)
7. after successful check apply we are showing to the user alert like “documents uploaded suessfully” and next time user login we are expecting from step 1-2-3 to receive from “api/v1/user/overview” -> PendingApplication.status.alias == PendingApplication.Alias.SUBMITTED
and then just showing to the user tile with 100% pending review but with still pending application. After few days passes this user not receiving any pendingApplications from backend anymore, just normal spend/investment/credit application and we are redirecting user to dashboard 

To test this flow you can register any user with SSN mask: XXXXX0002 - it’ll make user being required to pass additional review (receive PendingApplication.Alias.PROCESSING  from api/v1/user/overview)