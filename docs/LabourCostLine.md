# LabourCostLine


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**qualification_level** | **str** |  | [optional] 
**total_seconds** | **int** |  | [optional] 
**sessions** | **int** |  | [optional] 
**billed_units** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**rate** | **float** |  | [optional] 
**currency** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**running** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.labour_cost_line import LabourCostLine

# TODO update the JSON string below
json = "{}"
# create an instance of LabourCostLine from a JSON string
labour_cost_line_instance = LabourCostLine.from_json(json)
# print the JSON string representation of the object
print(LabourCostLine.to_json())

# convert the object into a dict
labour_cost_line_dict = labour_cost_line_instance.to_dict()
# create an instance of LabourCostLine from a dict
labour_cost_line_from_dict = LabourCostLine.from_dict(labour_cost_line_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


