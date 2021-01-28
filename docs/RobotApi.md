# \RobotApi

All URIs are relative to *https://quay.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateOrgRobot**](RobotApi.md#CreateOrgRobot) | **Put** /api/v1/organization/{orgname}/robots/{robot_shortname} | 
[**CreateUserRobot**](RobotApi.md#CreateUserRobot) | **Put** /api/v1/user/robots/{robot_shortname} | 
[**DeleteOrgRobot**](RobotApi.md#DeleteOrgRobot) | **Delete** /api/v1/organization/{orgname}/robots/{robot_shortname} | 
[**DeleteUserRobot**](RobotApi.md#DeleteUserRobot) | **Delete** /api/v1/user/robots/{robot_shortname} | 
[**GetOrgRobot**](RobotApi.md#GetOrgRobot) | **Get** /api/v1/organization/{orgname}/robots/{robot_shortname} | 
[**GetOrgRobotPermissions**](RobotApi.md#GetOrgRobotPermissions) | **Get** /api/v1/organization/{orgname}/robots/{robot_shortname}/permissions | 
[**GetOrgRobots**](RobotApi.md#GetOrgRobots) | **Get** /api/v1/organization/{orgname}/robots | 
[**GetUserRobot**](RobotApi.md#GetUserRobot) | **Get** /api/v1/user/robots/{robot_shortname} | 
[**GetUserRobotPermissions**](RobotApi.md#GetUserRobotPermissions) | **Get** /api/v1/user/robots/{robot_shortname}/permissions | 
[**GetUserRobots**](RobotApi.md#GetUserRobots) | **Get** /api/v1/user/robots | 
[**RegenerateOrgRobotToken**](RobotApi.md#RegenerateOrgRobotToken) | **Post** /api/v1/organization/{orgname}/robots/{robot_shortname}/regenerate | 
[**RegenerateUserRobotToken**](RobotApi.md#RegenerateUserRobotToken) | **Post** /api/v1/user/robots/{robot_shortname}/regenerate | 



## CreateOrgRobot

> CreateOrgRobot(ctx, orgname, robotShortname).Body(body).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix
    body := *openapiclient.NewCreateRobot() // CreateRobot | Request body contents.

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.CreateOrgRobot(context.Background(), orgname, robotShortname).Body(body).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.CreateOrgRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateOrgRobotRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **body** | [**CreateRobot**](CreateRobot.md) | Request body contents. | 

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


## CreateUserRobot

> CreateUserRobot(ctx, robotShortname).Body(body).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix
    body := *openapiclient.NewCreateRobot() // CreateRobot | Request body contents.

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.CreateUserRobot(context.Background(), robotShortname).Body(body).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.CreateUserRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateUserRobotRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **body** | [**CreateRobot**](CreateRobot.md) | Request body contents. | 

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


## DeleteOrgRobot

> DeleteOrgRobot(ctx, orgname, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.DeleteOrgRobot(context.Background(), orgname, robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.DeleteOrgRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteOrgRobotRequest struct via the builder pattern


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


## DeleteUserRobot

> DeleteUserRobot(ctx, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.DeleteUserRobot(context.Background(), robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.DeleteUserRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteUserRobotRequest struct via the builder pattern


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


## GetOrgRobot

> GetOrgRobot(ctx, orgname, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetOrgRobot(context.Background(), orgname, robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetOrgRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrgRobotRequest struct via the builder pattern


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


## GetOrgRobotPermissions

> GetOrgRobotPermissions(ctx, orgname, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetOrgRobotPermissions(context.Background(), orgname, robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetOrgRobotPermissions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrgRobotPermissionsRequest struct via the builder pattern


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


## GetOrgRobots

> GetOrgRobots(ctx, orgname).Limit(limit).Token(token).Permissions(permissions).Execute()





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
    limit := int32(56) // int32 | If specified, the number of robots to return. (optional)
    token := true // bool | If false, the robot's token is not returned. (optional)
    permissions := true // bool | Whether to include repostories and teams in which the robots have permission. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetOrgRobots(context.Background(), orgname).Limit(limit).Token(token).Permissions(permissions).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetOrgRobots``: %v\n", err)
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

Other parameters are passed through a pointer to a apiGetOrgRobotsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **int32** | If specified, the number of robots to return. | 
 **token** | **bool** | If false, the robot&#39;s token is not returned. | 
 **permissions** | **bool** | Whether to include repostories and teams in which the robots have permission. | 

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


## GetUserRobot

> GetUserRobot(ctx, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetUserRobot(context.Background(), robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetUserRobot``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUserRobotRequest struct via the builder pattern


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


## GetUserRobotPermissions

> GetUserRobotPermissions(ctx, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetUserRobotPermissions(context.Background(), robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetUserRobotPermissions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUserRobotPermissionsRequest struct via the builder pattern


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


## GetUserRobots

> GetUserRobots(ctx).Limit(limit).Token(token).Permissions(permissions).Execute()





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
    limit := int32(56) // int32 | If specified, the number of robots to return. (optional)
    token := true // bool | If false, the robot's token is not returned. (optional)
    permissions := true // bool | Whether to include repositories and teams in which the robots have permission. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.GetUserRobots(context.Background()).Limit(limit).Token(token).Permissions(permissions).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.GetUserRobots``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetUserRobotsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int32** | If specified, the number of robots to return. | 
 **token** | **bool** | If false, the robot&#39;s token is not returned. | 
 **permissions** | **bool** | Whether to include repositories and teams in which the robots have permission. | 

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


## RegenerateOrgRobotToken

> RegenerateOrgRobotToken(ctx, orgname, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.RegenerateOrgRobotToken(context.Background(), orgname, robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.RegenerateOrgRobotToken``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgname** | **string** | The name of the organization | 
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiRegenerateOrgRobotTokenRequest struct via the builder pattern


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


## RegenerateUserRobotToken

> RegenerateUserRobotToken(ctx, robotShortname).Execute()





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
    robotShortname := "robotShortname_example" // string | The short name for the robot, without any user or organization prefix

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RobotApi.RegenerateUserRobotToken(context.Background(), robotShortname).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `RobotApi.RegenerateUserRobotToken``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**robotShortname** | **string** | The short name for the robot, without any user or organization prefix | 

### Other Parameters

Other parameters are passed through a pointer to a apiRegenerateUserRobotTokenRequest struct via the builder pattern


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

