# \LogsApi

All URIs are relative to *https://quay.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListOrgLogs**](LogsApi.md#ListOrgLogs) | **Get** /api/v1/organization/{orgname}/logs | 
[**ListRepoLogs**](LogsApi.md#ListRepoLogs) | **Get** /api/v1/repository/{repository}/logs | 
[**ListUserLogs**](LogsApi.md#ListUserLogs) | **Get** /api/v1/user/logs | 



## ListOrgLogs

> ListOrgLogs(ctx, orgname).NextPage(nextPage).Performer(performer).Endtime(endtime).Starttime(starttime).Execute()





### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    orgname := "orgname_example" // string | The name of the organization
    nextPage := "nextPage_example" // string | The page token for the next page (optional)
    performer := "performer_example" // string | Username for which to filter logs. (optional)
    endtime := "endtime_example" // string | Latest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)
    starttime := "starttime_example" // string | Earliest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.LogsApi.ListOrgLogs(context.Background(), orgname).NextPage(nextPage).Performer(performer).Endtime(endtime).Starttime(starttime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogsApi.ListOrgLogs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiListOrgLogsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **nextPage** | **string** | The page token for the next page | 
 **performer** | **string** | Username for which to filter logs. | 
 **endtime** | **string** | Latest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 
 **starttime** | **string** | Earliest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 

### Return type

 (empty response body)

### Authorization

[oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListRepoLogs

> ListRepoLogs(ctx, repository).NextPage(nextPage).Endtime(endtime).Starttime(starttime).Execute()





### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    repository := "repository_example" // string | The full path of the repository. e.g. namespace/name
    nextPage := "nextPage_example" // string | The page token for the next page (optional)
    endtime := "endtime_example" // string | Latest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)
    starttime := "starttime_example" // string | Earliest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.LogsApi.ListRepoLogs(context.Background(), repository).NextPage(nextPage).Endtime(endtime).Starttime(starttime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogsApi.ListRepoLogs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**repository** | **string** | The full path of the repository. e.g. namespace/name | 

### Other Parameters

Other parameters are passed through a pointer to a apiListRepoLogsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **nextPage** | **string** | The page token for the next page | 
 **endtime** | **string** | Latest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 
 **starttime** | **string** | Earliest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 

### Return type

 (empty response body)

### Authorization

[oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListUserLogs

> ListUserLogs(ctx).NextPage(nextPage).Performer(performer).Endtime(endtime).Starttime(starttime).Execute()





### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    nextPage := "nextPage_example" // string | The page token for the next page (optional)
    performer := "performer_example" // string | Username for which to filter logs. (optional)
    endtime := "endtime_example" // string | Latest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)
    starttime := "starttime_example" // string | Earliest time for logs. Format: \"%m/%d/%Y\" in UTC. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.LogsApi.ListUserLogs(context.Background()).NextPage(nextPage).Performer(performer).Endtime(endtime).Starttime(starttime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `LogsApi.ListUserLogs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListUserLogsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nextPage** | **string** | The page token for the next page | 
 **performer** | **string** | Username for which to filter logs. | 
 **endtime** | **string** | Latest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 
 **starttime** | **string** | Earliest time for logs. Format: \&quot;%m/%d/%Y\&quot; in UTC. | 

### Return type

 (empty response body)

### Authorization

[oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

