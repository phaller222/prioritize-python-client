# StartProcessInstanceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**definition_id** | **int** |  | [optional] 
**variables** | **Dict[str, object]** |  | [optional] 

## Example

```python
from prioritize_client.models.start_process_instance_request import StartProcessInstanceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StartProcessInstanceRequest from a JSON string
start_process_instance_request_instance = StartProcessInstanceRequest.from_json(json)
# print the JSON string representation of the object
print(StartProcessInstanceRequest.to_json())

# convert the object into a dict
start_process_instance_request_dict = start_process_instance_request_instance.to_dict()
# create an instance of StartProcessInstanceRequest from a dict
start_process_instance_request_from_dict = StartProcessInstanceRequest.from_dict(start_process_instance_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


