# EquipmentCostReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **int** |  | [optional] 
**lines** | [**List[EquipmentCostLine]**](EquipmentCostLine.md) |  | [optional] 
**totals** | [**List[CurrencyTotal]**](CurrencyTotal.md) |  | [optional] 
**rates_missing** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_cost_report import EquipmentCostReport

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentCostReport from a JSON string
equipment_cost_report_instance = EquipmentCostReport.from_json(json)
# print the JSON string representation of the object
print(EquipmentCostReport.to_json())

# convert the object into a dict
equipment_cost_report_dict = equipment_cost_report_instance.to_dict()
# create an instance of EquipmentCostReport from a dict
equipment_cost_report_from_dict = EquipmentCostReport.from_dict(equipment_cost_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


