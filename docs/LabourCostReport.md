# LabourCostReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **int** |  | [optional] 
**lines** | [**List[LabourCostLine]**](LabourCostLine.md) |  | [optional] 
**totals** | [**List[CurrencyTotal]**](CurrencyTotal.md) |  | [optional] 
**rates_missing** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.labour_cost_report import LabourCostReport

# TODO update the JSON string below
json = "{}"
# create an instance of LabourCostReport from a JSON string
labour_cost_report_instance = LabourCostReport.from_json(json)
# print the JSON string representation of the object
print(LabourCostReport.to_json())

# convert the object into a dict
labour_cost_report_dict = labour_cost_report_instance.to_dict()
# create an instance of LabourCostReport from a dict
labour_cost_report_from_dict = LabourCostReport.from_dict(labour_cost_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


