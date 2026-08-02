# UserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**firstname** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**occupation** | **str** |  | [optional] 
**date_of_birth** | **datetime** |  | [optional] 
**gender** | **str** |  | [optional] 
**address** | [**AddressRequest**](AddressRequest.md) |  | [optional] 
**admin** | **bool** |  | [optional] 
**active** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.user_request import UserRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UserRequest from a JSON string
user_request_instance = UserRequest.from_json(json)
# print the JSON string representation of the object
print(UserRequest.to_json())

# convert the object into a dict
user_request_dict = user_request_instance.to_dict()
# create an instance of UserRequest from a dict
user_request_from_dict = UserRequest.from_dict(user_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


