# \ErrorApi

All URIs are relative to *https://quay.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetErrorDescription**](ErrorApi.md#GetErrorDescription) | **Get** /api/v1/error/{error_type} | 



## GetErrorDescription

> ApiErrorDescription GetErrorDescription(ctx, errorType).Execute()





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
    errorType := "errorType_example" // string | The error code identifying the type of error.

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ErrorApi.GetErrorDescription(context.Background(), errorType).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ErrorApi.GetErrorDescription``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetErrorDescription`: ApiErrorDescription
    fmt.Fprintf(os.Stdout, "Response from `ErrorApi.GetErrorDescription`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**errorType** | **string** | The error code identifying the type of error. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetErrorDescriptionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ApiErrorDescription**](ApiErrorDescription.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

