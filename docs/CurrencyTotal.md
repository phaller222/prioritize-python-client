# CurrencyTotal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 

## Example

```python
from prioritize_client.models.currency_total import CurrencyTotal

# TODO update the JSON string below
json = "{}"
# create an instance of CurrencyTotal from a JSON string
currency_total_instance = CurrencyTotal.from_json(json)
# print the JSON string representation of the object
print(CurrencyTotal.to_json())

# convert the object into a dict
currency_total_dict = currency_total_instance.to_dict()
# create an instance of CurrencyTotal from a dict
currency_total_from_dict = CurrencyTotal.from_dict(currency_total_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


