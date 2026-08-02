# TelemetryRuleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datapoint** | **str** |  | [optional] 
**operator** | **str** |  | [optional] 
**threshold** | **float** |  | [optional] 
**threshold_high** | **float** |  | [optional] 
**hysteresis** | **float** |  | [optional] 
**severity** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.telemetry_rule_request import TelemetryRuleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TelemetryRuleRequest from a JSON string
telemetry_rule_request_instance = TelemetryRuleRequest.from_json(json)
# print the JSON string representation of the object
print(TelemetryRuleRequest.to_json())

# convert the object into a dict
telemetry_rule_request_dict = telemetry_rule_request_instance.to_dict()
# create an instance of TelemetryRuleRequest from a dict
telemetry_rule_request_from_dict = TelemetryRuleRequest.from_dict(telemetry_rule_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


