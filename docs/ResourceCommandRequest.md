# ResourceCommandRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **str** |  | [optional] 
**param** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_command_request import ResourceCommandRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceCommandRequest from a JSON string
resource_command_request_instance = ResourceCommandRequest.from_json(json)
# print the JSON string representation of the object
print(ResourceCommandRequest.to_json())

# convert the object into a dict
resource_command_request_dict = resource_command_request_instance.to_dict()
# create an instance of ResourceCommandRequest from a dict
resource_command_request_from_dict = ResourceCommandRequest.from_dict(resource_command_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


