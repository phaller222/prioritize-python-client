# TelemetryRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**resource_id** | **int** |  | [optional] 
**datapoint** | **str** |  | [optional] 
**operator** | **str** |  | [optional] 
**threshold** | **float** |  | [optional] 
**threshold_high** | **float** |  | [optional] 
**hysteresis** | **float** |  | [optional] 
**severity** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 
**state** | **str** |  | [optional] 
**last_transition_at** | **datetime** |  | [optional] 

## Example

```python
from prioritize_client.models.telemetry_rule_dto import TelemetryRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TelemetryRuleDTO from a JSON string
telemetry_rule_dto_instance = TelemetryRuleDTO.from_json(json)
# print the JSON string representation of the object
print(TelemetryRuleDTO.to_json())

# convert the object into a dict
telemetry_rule_dto_dict = telemetry_rule_dto_instance.to_dict()
# create an instance of TelemetryRuleDTO from a dict
telemetry_rule_dto_from_dict = TelemetryRuleDTO.from_dict(telemetry_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


