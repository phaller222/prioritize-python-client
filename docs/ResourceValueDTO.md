# ResourceValueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_value_dto import ResourceValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceValueDTO from a JSON string
resource_value_dto_instance = ResourceValueDTO.from_json(json)
# print the JSON string representation of the object
print(ResourceValueDTO.to_json())

# convert the object into a dict
resource_value_dto_dict = resource_value_dto_instance.to_dict()
# create an instance of ResourceValueDTO from a dict
resource_value_dto_from_dict = ResourceValueDTO.from_dict(resource_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


