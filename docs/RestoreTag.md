# RestoreTag

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Image** | Pointer to **string** | (Deprecated: use &#x60;manifest_digest&#x60;) Image to which the tag should point | [optional] 
**ManifestDigest** | Pointer to **string** | If specified, the manifest digest that should be used | [optional] 

## Methods

### NewRestoreTag

`func NewRestoreTag() *RestoreTag`

NewRestoreTag instantiates a new RestoreTag object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRestoreTagWithDefaults

`func NewRestoreTagWithDefaults() *RestoreTag`

NewRestoreTagWithDefaults instantiates a new RestoreTag object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetImage

`func (o *RestoreTag) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RestoreTag) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RestoreTag) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *RestoreTag) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetManifestDigest

`func (o *RestoreTag) GetManifestDigest() string`

GetManifestDigest returns the ManifestDigest field if non-nil, zero value otherwise.

### GetManifestDigestOk

`func (o *RestoreTag) GetManifestDigestOk() (*string, bool)`

GetManifestDigestOk returns a tuple with the ManifestDigest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManifestDigest

`func (o *RestoreTag) SetManifestDigest(v string)`

SetManifestDigest sets ManifestDigest field to given value.

### HasManifestDigest

`func (o *RestoreTag) HasManifestDigest() bool`

HasManifestDigest returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


