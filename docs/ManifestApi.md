# \ManifestApi

All URIs are relative to *https://quay.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddManifestLabel**](ManifestApi.md#AddManifestLabel) | **Post** /api/v1/repository/{repository}/manifest/{manifestref}/labels | 
[**DeleteManifestLabel**](ManifestApi.md#DeleteManifestLabel) | **Delete** /api/v1/repository/{repository}/manifest/{manifestref}/labels/{labelid} | 
[**GetManifestLabel**](ManifestApi.md#GetManifestLabel) | **Get** /api/v1/repository/{repository}/manifest/{manifestref}/labels/{labelid} | 
[**GetRepoManifest**](ManifestApi.md#GetRepoManifest) | **Get** /api/v1/repository/{repository}/manifest/{manifestref} | 
[**ListManifestLabels**](ManifestApi.md#ListManifestLabels) | **Get** /api/v1/repository/{repository}/manifest/{manifestref}/labels | 



## AddManifestLabel

> AddManifestLabel(ctx, manifestref, repository).Body(body).Execute()





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
    body := *openapiclient.NewAddLabel("Value_example", "Key_example") // AddLabel | Request body contents.

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ManifestApi.AddManifestLabel(context.Background(), manifestref, repository).Body(body).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManifestApi.AddManifestLabel``: %v\n", err)
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

Other parameters are passed through a pointer to a apiAddManifestLabelRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **body** | [**AddLabel**](AddLabel.md) | Request body contents. | 

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


## DeleteManifestLabel

> DeleteManifestLabel(ctx, labelid, manifestref, repository).Execute()





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
    labelid := "labelid_example" // string | The ID of the label
    manifestref := "manifestref_example" // string | The digest of the manifest
    repository := "repository_example" // string | The full path of the repository. e.g. namespace/name

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ManifestApi.DeleteManifestLabel(context.Background(), labelid, manifestref, repository).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManifestApi.DeleteManifestLabel``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**labelid** | **string** | The ID of the label | 
**manifestref** | **string** | The digest of the manifest | 
**repository** | **string** | The full path of the repository. e.g. namespace/name | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteManifestLabelRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




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


## GetManifestLabel

> GetManifestLabel(ctx, labelid, manifestref, repository).Execute()





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
    labelid := "labelid_example" // string | The ID of the label
    manifestref := "manifestref_example" // string | The digest of the manifest
    repository := "repository_example" // string | The full path of the repository. e.g. namespace/name

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ManifestApi.GetManifestLabel(context.Background(), labelid, manifestref, repository).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManifestApi.GetManifestLabel``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**labelid** | **string** | The ID of the label | 
**manifestref** | **string** | The digest of the manifest | 
**repository** | **string** | The full path of the repository. e.g. namespace/name | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetManifestLabelRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




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


## GetRepoManifest

> GetRepoManifest(ctx, manifestref, repository).Execute()



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

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ManifestApi.GetRepoManifest(context.Background(), manifestref, repository).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManifestApi.GetRepoManifest``: %v\n", err)
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

Other parameters are passed through a pointer to a apiGetRepoManifestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



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


## ListManifestLabels

> ListManifestLabels(ctx, manifestref, repository).Filter(filter).Execute()



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
    filter := "filter_example" // string | If specified, only labels matching the given prefix will be returned (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ManifestApi.ListManifestLabels(context.Background(), manifestref, repository).Filter(filter).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManifestApi.ListManifestLabels``: %v\n", err)
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

Other parameters are passed through a pointer to a apiListManifestLabelsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **filter** | **string** | If specified, only labels matching the given prefix will be returned | 

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

