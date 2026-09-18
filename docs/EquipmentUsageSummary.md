# EquipmentUsageSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **int** |  | [optional] 
**resource_id** | **int** |  | [optional] 
**resource_name** | **str** |  | [optional] 
**total_seconds** | **int** |  | [optional] 
**total_text** | **str** |  | [optional] 
**running** | **bool** |  | [optional] 
**running_since** | **datetime** |  | [optional] 

## Example

```python
from prioritize_client.models.equipment_usage_summary import EquipmentUsageSummary

# TODO update the JSON string below
json = "{}"
# create an instance of EquipmentUsageSummary from a JSON string
equipment_usage_summary_instance = EquipmentUsageSummary.from_json(json)
# print the JSON string representation of the object
print(EquipmentUsageSummary.to_json())

# convert the object into a dict
equipment_usage_summary_dict = equipment_usage_summary_instance.to_dict()
# create an instance of EquipmentUsageSummary from a dict
equipment_usage_summary_from_dict = EquipmentUsageSummary.from_dict(equipment_usage_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


