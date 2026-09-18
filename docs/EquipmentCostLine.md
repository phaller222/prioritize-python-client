# EquipmentCostLine


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_id** | **int** |  | [optional] 
**resource_name** | **str** |  | [optional] 
**total_seconds** | **int** |  | [optional] 
**bookings** | **int** |  | [optional] 
**billed_units** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**rate** | **float** |  | [optional] 
**currency** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**running** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_cost_line import EquipmentCostLine

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentCostLine from a JSON string
equipment_cost_line_instance = EquipmentCostLine.from_json(json)
# print the JSON string representation of the object
print(EquipmentCostLine.to_json())

# convert the object into a dict
equipment_cost_line_dict = equipment_cost_line_instance.to_dict()
# create an instance of EquipmentCostLine from a dict
equipment_cost_line_from_dict = EquipmentCostLine.from_dict(equipment_cost_line_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


