# prioritize_client.TelemetryRulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**telemetry_rule_create_rule**](TelemetryRulesApi.md#telemetry_rule_create_rule) | **POST** /api/v1/resources/{resourceId}/telemetry-rules | Creates a monitoring rule on a resource
[**telemetry_rule_delete_rule**](TelemetryRulesApi.md#telemetry_rule_delete_rule) | **DELETE** /api/v1/telemetry-rules/{id} | Deletes a rule
[**telemetry_rule_get_rule**](TelemetryRulesApi.md#telemetry_rule_get_rule) | **GET** /api/v1/telemetry-rules/{id} | Returns a single rule by id
[**telemetry_rule_get_rules**](TelemetryRulesApi.md#telemetry_rule_get_rules) | **GET** /api/v1/resources/{resourceId}/telemetry-rules | Lists all monitoring rules of a resource (any data point, enabled or not)
[**telemetry_rule_update_rule**](TelemetryRulesApi.md#telemetry_rule_update_rule) | **PATCH** /api/v1/telemetry-rules/{id} | Partially updates a rule (only the fields present in the body are changed)


# **telemetry_rule_create_rule**
> TelemetryRuleDTO telemetry_rule_create_rule(resource_id, telemetry_rule_request)

Creates a monitoring rule on a resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.telemetry_rule_dto import TelemetryRuleDTO
from prioritize_client.models.telemetry_rule_request import TelemetryRuleRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.TelemetryRulesApi(api_client)
    resource_id = 56 # int | 
    telemetry_rule_request = prioritize_client.TelemetryRuleRequest() # TelemetryRuleRequest | 

    try:
        # Creates a monitoring rule on a resource
        api_response = api_instance.telemetry_rule_create_rule(resource_id, telemetry_rule_request)
        print("The response of TelemetryRulesApi->telemetry_rule_create_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TelemetryRulesApi->telemetry_rule_create_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 
 **telemetry_rule_request** | [**TelemetryRuleRequest**](TelemetryRuleRequest.md)|  | 

### Return type

[**TelemetryRuleDTO**](TelemetryRuleDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetry_rule_delete_rule**
> telemetry_rule_delete_rule(id)

Deletes a rule

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.TelemetryRulesApi(api_client)
    id = 56 # int | 

    try:
        # Deletes a rule
        api_instance.telemetry_rule_delete_rule(id)
    except Exception as e:
        print("Exception when calling TelemetryRulesApi->telemetry_rule_delete_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetry_rule_get_rule**
> TelemetryRuleDTO telemetry_rule_get_rule(id)

Returns a single rule by id

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.telemetry_rule_dto import TelemetryRuleDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.TelemetryRulesApi(api_client)
    id = 56 # int | 

    try:
        # Returns a single rule by id
        api_response = api_instance.telemetry_rule_get_rule(id)
        print("The response of TelemetryRulesApi->telemetry_rule_get_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TelemetryRulesApi->telemetry_rule_get_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TelemetryRuleDTO**](TelemetryRuleDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetry_rule_get_rules**
> List[TelemetryRuleDTO] telemetry_rule_get_rules(resource_id)

Lists all monitoring rules of a resource (any data point, enabled or not)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.telemetry_rule_dto import TelemetryRuleDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.TelemetryRulesApi(api_client)
    resource_id = 56 # int | 

    try:
        # Lists all monitoring rules of a resource (any data point, enabled or not)
        api_response = api_instance.telemetry_rule_get_rules(resource_id)
        print("The response of TelemetryRulesApi->telemetry_rule_get_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TelemetryRulesApi->telemetry_rule_get_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 

### Return type

[**List[TelemetryRuleDTO]**](TelemetryRuleDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetry_rule_update_rule**
> TelemetryRuleDTO telemetry_rule_update_rule(id, telemetry_rule_request)

Partially updates a rule (only the fields present in the body are changed)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.telemetry_rule_dto import TelemetryRuleDTO
from prioritize_client.models.telemetry_rule_request import TelemetryRuleRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.TelemetryRulesApi(api_client)
    id = 56 # int | 
    telemetry_rule_request = prioritize_client.TelemetryRuleRequest() # TelemetryRuleRequest | 

    try:
        # Partially updates a rule (only the fields present in the body are changed)
        api_response = api_instance.telemetry_rule_update_rule(id, telemetry_rule_request)
        print("The response of TelemetryRulesApi->telemetry_rule_update_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TelemetryRulesApi->telemetry_rule_update_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **telemetry_rule_request** | [**TelemetryRuleRequest**](TelemetryRuleRequest.md)|  | 

### Return type

[**TelemetryRuleDTO**](TelemetryRuleDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

