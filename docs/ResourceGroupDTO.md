# ResourceGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**department_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_group_dto import ResourceGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceGroupDTO from a JSON string
resource_group_dto_instance = ResourceGroupDTO.from_json(json)
# print the JSON string representation of the object
print(ResourceGroupDTO.to_json())

# convert the object into a dict
resource_group_dto_dict = resource_group_dto_instance.to_dict()
# create an instance of ResourceGroupDTO from a dict
resource_group_dto_from_dict = ResourceGroupDTO.from_dict(resource_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


