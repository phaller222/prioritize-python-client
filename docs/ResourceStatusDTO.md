# ResourceStatusDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | [**ResourceDTO**](ResourceDTO.md) |  | [optional] 
**latest_values** | [**List[ResourceValueDTO]**](ResourceValueDTO.md) |  | [optional] 
**telemetry_rules** | [**List[TelemetryRuleDTO]**](TelemetryRuleDTO.md) |  | [optional] 

## Example

```python
from prioritize_client.models.resource_status_dto import ResourceStatusDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceStatusDTO from a JSON string
resource_status_dto_instance = ResourceStatusDTO.from_json(json)
# print the JSON string representation of the object
print(ResourceStatusDTO.to_json())

# convert the object into a dict
resource_status_dto_dict = resource_status_dto_instance.to_dict()
# create an instance of ResourceStatusDTO from a dict
resource_status_dto_from_dict = ResourceStatusDTO.from_dict(resource_status_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


