# \SecscanApi

All URIs are relative to *https://quay.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRepoImageSecurity**](SecscanApi.md#GetRepoImageSecurity) | **Get** /api/v1/repository/{repository}/image/{imageid}/security | 
[**GetRepoManifestSecurity**](SecscanApi.md#GetRepoManifestSecurity) | **Get** /api/v1/repository/{repository}/manifest/{manifestref}/security | 



## GetRepoImageSecurity

> GetRepoImageSecurity(ctx, repository, imageid).Vulnerabilities(vulnerabilities).Execute()





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
    imageid := "imageid_example" // string | The image ID
    vulnerabilities := true // bool | Include vulnerabilities information (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.SecscanApi.GetRepoImageSecurity(context.Background(), repository, imageid).Vulnerabilities(vulnerabilities).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SecscanApi.GetRepoImageSecurity``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**repository** | **string** | The full path of the repository. e.g. namespace/name | 
**imageid** | **string** | The image ID | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRepoImageSecurityRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **vulnerabilities** | **bool** | Include vulnerabilities information | 

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


## GetRepoManifestSecurity

> GetRepoManifestSecurity(ctx, manifestref, repository).Vulnerabilities(vulnerabilities).Execute()



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
    manifestref := "manifestref_example" // string | The digest of the manifest
    repository := "repository_example" // string | The full path of the repository. e.g. namespace/name
    vulnerabilities := true // bool | Include vulnerabilities informations (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.SecscanApi.GetRepoManifestSecurity(context.Background(), manifestref, repository).Vulnerabilities(vulnerabilities).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SecscanApi.GetRepoManifestSecurity``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**manifestref** | **string** | The digest of the manifest | 
**repository** | **string** | The full path of the repository. e.g. namespace/name | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetRepoManifestSecurityRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **vulnerabilities** | **bool** | Include vulnerabilities informations | 

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

