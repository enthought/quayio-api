# UpdateOrg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InvoiceEmail** | Pointer to **bool** | Whether the organization desires to receive emails for invoices | [optional] 
**Email** | Pointer to **string** | Organization contact email | [optional] 
**TagExpirationS** | Pointer to **int32** | The number of seconds for tag expiration | [optional] 

## Methods

### NewUpdateOrg

`func NewUpdateOrg() *UpdateOrg`

NewUpdateOrg instantiates a new UpdateOrg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateOrgWithDefaults

`func NewUpdateOrgWithDefaults() *UpdateOrg`

NewUpdateOrgWithDefaults instantiates a new UpdateOrg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInvoiceEmail

`func (o *UpdateOrg) GetInvoiceEmail() bool`

GetInvoiceEmail returns the InvoiceEmail field if non-nil, zero value otherwise.

### GetInvoiceEmailOk

`func (o *UpdateOrg) GetInvoiceEmailOk() (*bool, bool)`

GetInvoiceEmailOk returns a tuple with the InvoiceEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvoiceEmail

`func (o *UpdateOrg) SetInvoiceEmail(v bool)`

SetInvoiceEmail sets InvoiceEmail field to given value.

### HasInvoiceEmail

`func (o *UpdateOrg) HasInvoiceEmail() bool`

HasInvoiceEmail returns a boolean if a field has been set.

### GetEmail

`func (o *UpdateOrg) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *UpdateOrg) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *UpdateOrg) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *UpdateOrg) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetTagExpirationS

`func (o *UpdateOrg) GetTagExpirationS() int32`

GetTagExpirationS returns the TagExpirationS field if non-nil, zero value otherwise.

### GetTagExpirationSOk

`func (o *UpdateOrg) GetTagExpirationSOk() (*int32, bool)`

GetTagExpirationSOk returns a tuple with the TagExpirationS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTagExpirationS

`func (o *UpdateOrg) SetTagExpirationS(v int32)`

SetTagExpirationS sets TagExpirationS field to given value.

### HasTagExpirationS

`func (o *UpdateOrg) HasTagExpirationS() bool`

HasTagExpirationS returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


