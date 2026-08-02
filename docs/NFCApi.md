# prioritize_client.NFCApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nfc_unit_bind_task**](NFCApi.md#nfc_unit_bind_task) | **PUT** /api/v1/nfc-units/{id}/task/{taskId} | Bind task
[**nfc_unit_delete_nfc_unit**](NFCApi.md#nfc_unit_delete_nfc_unit) | **DELETE** /api/v1/nfc-units/{id} | Delete an NFC unit
[**nfc_unit_get_nfc_units**](NFCApi.md#nfc_unit_get_nfc_units) | **GET** /api/v1/resources/{resourceId}/nfc-units | Get the NFC units
[**nfc_unit_register_nfc_unit**](NFCApi.md#nfc_unit_register_nfc_unit) | **POST** /api/v1/resources/{resourceId}/nfc-units | Register an NFC unit
[**nfc_unit_scan**](NFCApi.md#nfc_unit_scan) | **POST** /api/v1/nfc/scan/{uuid} | Process an NFC tag scan by its uuid
[**nfc_unit_unbind_task**](NFCApi.md#nfc_unit_unbind_task) | **DELETE** /api/v1/nfc-units/{id}/task | Unbind task


# **nfc_unit_bind_task**
> NfcUnitDTO nfc_unit_bind_task(id, task_id)

Bind task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.nfc_unit_dto import NfcUnitDTO
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
    api_instance = prioritize_client.NFCApi(api_client)
    id = 56 # int | 
    task_id = 56 # int | 

    try:
        # Bind task
        api_response = api_instance.nfc_unit_bind_task(id, task_id)
        print("The response of NFCApi->nfc_unit_bind_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_bind_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **task_id** | **int**|  | 

### Return type

[**NfcUnitDTO**](NfcUnitDTO.md)

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

# **nfc_unit_delete_nfc_unit**
> nfc_unit_delete_nfc_unit(id)

Delete an NFC unit

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
    api_instance = prioritize_client.NFCApi(api_client)
    id = 56 # int | 

    try:
        # Delete an NFC unit
        api_instance.nfc_unit_delete_nfc_unit(id)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_delete_nfc_unit: %s\n" % e)
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

# **nfc_unit_get_nfc_units**
> List[NfcUnitDTO] nfc_unit_get_nfc_units(resource_id)

Get the NFC units

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.nfc_unit_dto import NfcUnitDTO
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
    api_instance = prioritize_client.NFCApi(api_client)
    resource_id = 56 # int | 

    try:
        # Get the NFC units
        api_response = api_instance.nfc_unit_get_nfc_units(resource_id)
        print("The response of NFCApi->nfc_unit_get_nfc_units:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_get_nfc_units: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 

### Return type

[**List[NfcUnitDTO]**](NfcUnitDTO.md)

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

# **nfc_unit_register_nfc_unit**
> NfcUnitDTO nfc_unit_register_nfc_unit(resource_id, nfc_unit_request)

Register an NFC unit

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.nfc_unit_dto import NfcUnitDTO
from prioritize_client.models.nfc_unit_request import NfcUnitRequest
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
    api_instance = prioritize_client.NFCApi(api_client)
    resource_id = 56 # int | 
    nfc_unit_request = prioritize_client.NfcUnitRequest() # NfcUnitRequest | 

    try:
        # Register an NFC unit
        api_response = api_instance.nfc_unit_register_nfc_unit(resource_id, nfc_unit_request)
        print("The response of NFCApi->nfc_unit_register_nfc_unit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_register_nfc_unit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 
 **nfc_unit_request** | [**NfcUnitRequest**](NfcUnitRequest.md)|  | 

### Return type

[**NfcUnitDTO**](NfcUnitDTO.md)

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

# **nfc_unit_scan**
> ScanResult nfc_unit_scan(uuid)

Process an NFC tag scan by its uuid

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.scan_result import ScanResult
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
    api_instance = prioritize_client.NFCApi(api_client)
    uuid = 'uuid_example' # str | 

    try:
        # Process an NFC tag scan by its uuid
        api_response = api_instance.nfc_unit_scan(uuid)
        print("The response of NFCApi->nfc_unit_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_scan: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**|  | 

### Return type

[**ScanResult**](ScanResult.md)

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

# **nfc_unit_unbind_task**
> NfcUnitDTO nfc_unit_unbind_task(id)

Unbind task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.nfc_unit_dto import NfcUnitDTO
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
    api_instance = prioritize_client.NFCApi(api_client)
    id = 56 # int | 

    try:
        # Unbind task
        api_response = api_instance.nfc_unit_unbind_task(id)
        print("The response of NFCApi->nfc_unit_unbind_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NFCApi->nfc_unit_unbind_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**NfcUnitDTO**](NfcUnitDTO.md)

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

