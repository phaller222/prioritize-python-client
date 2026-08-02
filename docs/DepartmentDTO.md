# DepartmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**company_id** | **int** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from prioritize_client.models.department_dto import DepartmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DepartmentDTO from a JSON string
department_dto_instance = DepartmentDTO.from_json(json)
# print the JSON string representation of the object
print(DepartmentDTO.to_json())

# convert the object into a dict
department_dto_dict = department_dto_instance.to_dict()
# create an instance of DepartmentDTO from a dict
department_dto_from_dict = DepartmentDTO.from_dict(department_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


