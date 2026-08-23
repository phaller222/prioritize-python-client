# StopAtRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**until** | **datetime** |  | [optional] 
**reason** | **str** |  | [optional] 
**user_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.stop_at_request import StopAtRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StopAtRequest from a JSON string
stop_at_request_instance = StopAtRequest.from_json(json)
# print the JSON string representation of the object
print(StopAtRequest.to_json())

# convert the object into a dict
stop_at_request_dict = stop_at_request_instance.to_dict()
# create an instance of StopAtRequest from a dict
stop_at_request_from_dict = StopAtRequest.from_dict(stop_at_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


