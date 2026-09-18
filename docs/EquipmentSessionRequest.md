# EquipmentSessionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **datetime** |  | [optional] 
**until** | **datetime** |  | [optional] 
**reason** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_session_request import EquipmentSessionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentSessionRequest from a JSON string
equipment_session_request_instance = EquipmentSessionRequest.from_json(json)
# print the JSON string representation of the object
print(EquipmentSessionRequest.to_json())

# convert the object into a dict
equipment_session_request_dict = equipment_session_request_instance.to_dict()
# create an instance of EquipmentSessionRequest from a dict
equipment_session_request_from_dict = EquipmentSessionRequest.from_dict(equipment_session_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


