# CancelProcessInstanceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.cancel_process_instance_request import CancelProcessInstanceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelProcessInstanceRequest from a JSON string
cancel_process_instance_request_instance = CancelProcessInstanceRequest.from_json(json)
# print the JSON string representation of the object
print(CancelProcessInstanceRequest.to_json())

# convert the object into a dict
cancel_process_instance_request_dict = cancel_process_instance_request_instance.to_dict()
# create an instance of CancelProcessInstanceRequest from a dict
cancel_process_instance_request_from_dict = CancelProcessInstanceRequest.from_dict(cancel_process_instance_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


