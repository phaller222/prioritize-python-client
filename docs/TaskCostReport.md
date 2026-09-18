# TaskCostReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **int** |  | [optional] 
**equipment** | [**EquipmentCostReport**](EquipmentCostReport.md) |  | [optional] 
**labour** | [**LabourCostReport**](LabourCostReport.md) |  | [optional] 
**totals** | [**List[CurrencyTotal]**](CurrencyTotal.md) |  | [optional] 
**rates_missing** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.task_cost_report import TaskCostReport

# TODO update the JSON string below
json = "{}"
# create an instance of TaskCostReport from a JSON string
task_cost_report_instance = TaskCostReport.from_json(json)
# print the JSON string representation of the object
print(TaskCostReport.to_json())

# convert the object into a dict
task_cost_report_dict = task_cost_report_instance.to_dict()
# create an instance of TaskCostReport from a dict
task_cost_report_from_dict = TaskCostReport.from_dict(task_cost_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


