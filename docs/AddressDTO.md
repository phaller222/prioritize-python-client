# AddressDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**street** | **str** |  | [optional] 
**housenumber** | **str** |  | [optional] 
**floor** | **str** |  | [optional] 
**zip_code** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**fax** | **str** |  | [optional] 
**mobile** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.address_dto import AddressDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AddressDTO from a JSON string
address_dto_instance = AddressDTO.from_json(json)
# print the JSON string representation of the object
print(AddressDTO.to_json())

# convert the object into a dict
address_dto_dict = address_dto_instance.to_dict()
# create an instance of AddressDTO from a dict
address_dto_from_dict = AddressDTO.from_dict(address_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


