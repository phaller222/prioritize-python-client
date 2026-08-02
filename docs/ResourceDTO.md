# ResourceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**stationary** | **bool** |  | [optional] 
**remote** | **bool** |  | [optional] 
**ip** | **str** |  | [optional] 
**port** | **int** |  | [optional] 
**busy** | **bool** |  | [optional] 
**max_slots** | **int** |  | [optional] 
**latitude** | **str** |  | [optional] 
**longitude** | **str** |  | [optional] 
**mqtt_resource** | **bool** |  | [optional] 
**mqtt_uuid** | **str** |  | [optional] 
**mqtt_data_send_topic** | **str** |  | [optional] 
**mqtt_data_receive_topic** | **str** |  | [optional] 
**mqtt_online** | **bool** |  | [optional] 
**mqtt_last_ping** | **datetime** |  | [optional] 
**agent** | **bool** |  | [optional] 
**department_id** | **int** |  | [optional] 
**resource_group_id** | **int** |  | [optional] 
**occupied_slots** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_dto import ResourceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceDTO from a JSON string
resource_dto_instance = ResourceDTO.from_json(json)
# print the JSON string representation of the object
print(ResourceDTO.to_json())

# convert the object into a dict
resource_dto_dict = resource_dto_instance.to_dict()
# create an instance of ResourceDTO from a dict
resource_dto_from_dict = ResourceDTO.from_dict(resource_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


