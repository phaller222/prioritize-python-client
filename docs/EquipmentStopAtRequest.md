# EquipmentStopAtRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**until** | **datetime** |  | [optional] 
**reason** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_stop_at_request import EquipmentStopAtRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentStopAtRequest from a JSON string
equipment_stop_at_request_instance = EquipmentStopAtRequest.from_json(json)
# print the JSON string representation of the object
print(EquipmentStopAtRequest.to_json())

# convert the object into a dict
equipment_stop_at_request_dict = equipment_stop_at_request_instance.to_dict()
# create an instance of EquipmentStopAtRequest from a dict
equipment_stop_at_request_from_dict = EquipmentStopAtRequest.from_dict(equipment_stop_at_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


