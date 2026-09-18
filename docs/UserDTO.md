# UserDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**username** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**firstname** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**occupation** | **str** |  | [optional] 
**last_seen** | **datetime** |  | [optional] 
**date_of_birth** | **date** |  | [optional] 
**gender** | **str** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**department_id** | **int** |  | [optional] 
**qualification_level_id** | **int** |  | [optional] 
**qualification_level_name** | **str** |  | [optional] 
**admin** | **bool** |  | [optional] 
**active** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.user_dto import UserDTO

# TODO update the JSON string below
json = "{}"
# create an instance of UserDTO from a JSON string
user_dto_instance = UserDTO.from_json(json)
# print the JSON string representation of the object
print(UserDTO.to_json())

# convert the object into a dict
user_dto_dict = user_dto_instance.to_dict()
# create an instance of UserDTO from a dict
user_dto_from_dict = UserDTO.from_dict(user_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


