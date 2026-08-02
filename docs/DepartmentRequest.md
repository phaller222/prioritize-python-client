# DepartmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**address** | [**AddressRequest**](AddressRequest.md) |  | [optional] 

## Example

```python
from prioritize_client.models.department_request import DepartmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DepartmentRequest from a JSON string
department_request_instance = DepartmentRequest.from_json(json)
# print the JSON string representation of the object
print(DepartmentRequest.to_json())

# convert the object into a dict
department_request_dict = department_request_instance.to_dict()
# create an instance of DepartmentRequest from a dict
department_request_from_dict = DepartmentRequest.from_dict(department_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


