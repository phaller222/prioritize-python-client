# EquipmentSession


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**resource_id** | **int** |  | [optional] 
**resource_name** | **str** |  | [optional] 
**var_from** | **datetime** |  | [optional] 
**until** | **datetime** |  | [optional] 
**seconds** | **int** |  | [optional] 
**running** | **bool** |  | [optional] 
**correction** | [**Correction**](Correction.md) |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_session import EquipmentSession

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentSession from a JSON string
equipment_session_instance = EquipmentSession.from_json(json)
# print the JSON string representation of the object
print(EquipmentSession.to_json())

# convert the object into a dict
equipment_session_dict = equipment_session_instance.to_dict()
# create an instance of EquipmentSession from a dict
equipment_session_from_dict = EquipmentSession.from_dict(equipment_session_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


