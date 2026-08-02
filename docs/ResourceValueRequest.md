# ResourceValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_value_request import ResourceValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceValueRequest from a JSON string
resource_value_request_instance = ResourceValueRequest.from_json(json)
# print the JSON string representation of the object
print(ResourceValueRequest.to_json())

# convert the object into a dict
resource_value_request_dict = resource_value_request_instance.to_dict()
# create an instance of ResourceValueRequest from a dict
resource_value_request_from_dict = ResourceValueRequest.from_dict(resource_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


