# ResourceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**ip** | **str** |  | [optional] 
**port** | **int** |  | [optional] 
**max_slots** | **int** |  | [optional] 
**stationary** | **bool** |  | [optional] 
**remote** | **bool** |  | [optional] 
**agent** | **bool** |  | [optional] 
**latitude** | **str** |  | [optional] 
**longitude** | **str** |  | [optional] 
**mqtt_resource** | **bool** |  | [optional] 
**mqtt_uuid** | **str** |  | [optional] 
**mqtt_data_send_topic** | **str** |  | [optional] 
**mqtt_data_receive_topic** | **str** |  | [optional] 
**mqtt_online** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_request import ResourceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceRequest from a JSON string
resource_request_instance = ResourceRequest.from_json(json)
# print the JSON string representation of the object
print(ResourceRequest.to_json())

# convert the object into a dict
resource_request_dict = resource_request_instance.to_dict()
# create an instance of ResourceRequest from a dict
resource_request_from_dict = ResourceRequest.from_dict(resource_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


