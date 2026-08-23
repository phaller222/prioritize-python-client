# prioritize_client.DepartmentsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**department_create**](DepartmentsApi.md#department_create) | **POST** /api/v1/companies/{companyId}/departments | Create department
[**department_delete**](DepartmentsApi.md#department_delete) | **DELETE** /api/v1/departments/{id} | Delete department
[**department_get_by_id**](DepartmentsApi.md#department_get_by_id) | **GET** /api/v1/departments/{id} | Get department by id
[**department_get_departments**](DepartmentsApi.md#department_get_departments) | **GET** /api/v1/departments | List the departments the caller may read, across all companies
[**department_get_departments_by_company**](DepartmentsApi.md#department_get_departments_by_company) | **GET** /api/v1/companies/{companyId}/departments | Get departments by company
[**department_update**](DepartmentsApi.md#department_update) | **PUT** /api/v1/departments/{id} | Update department


# **department_create**
> DepartmentDTO department_create(company_id, department_request)

Create department

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.department_dto import DepartmentDTO
from prioritize_client.models.department_request import DepartmentRequest
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
    api_instance = prioritize_client.DepartmentsApi(api_client)
    company_id = 56 # int | 
    department_request = prioritize_client.DepartmentRequest() # DepartmentRequest | 

    try:
        # Create department
        api_response = api_instance.department_create(company_id, department_request)
        print("The response of DepartmentsApi->department_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**|  | 
 **department_request** | [**DepartmentRequest**](DepartmentRequest.md)|  | 

### Return type

[**DepartmentDTO**](DepartmentDTO.md)

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

# **department_delete**
> department_delete(id)

Delete department

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
    api_instance = prioritize_client.DepartmentsApi(api_client)
    id = 56 # int | 

    try:
        # Delete department
        api_instance.department_delete(id)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_delete: %s\n" % e)
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

# **department_get_by_id**
> DepartmentDTO department_get_by_id(id)

Get department by id

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.department_dto import DepartmentDTO
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
    api_instance = prioritize_client.DepartmentsApi(api_client)
    id = 56 # int | 

    try:
        # Get department by id
        api_response = api_instance.department_get_by_id(id)
        print("The response of DepartmentsApi->department_get_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_get_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**DepartmentDTO**](DepartmentDTO.md)

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

# **department_get_departments**
> List[DepartmentDTO] department_get_departments()

List the departments the caller may read, across all companies

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.department_dto import DepartmentDTO
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
    api_instance = prioritize_client.DepartmentsApi(api_client)

    try:
        # List the departments the caller may read, across all companies
        api_response = api_instance.department_get_departments()
        print("The response of DepartmentsApi->department_get_departments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_get_departments: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[DepartmentDTO]**](DepartmentDTO.md)

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

# **department_get_departments_by_company**
> List[DepartmentDTO] department_get_departments_by_company(company_id)

Get departments by company

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.department_dto import DepartmentDTO
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
    api_instance = prioritize_client.DepartmentsApi(api_client)
    company_id = 56 # int | 

    try:
        # Get departments by company
        api_response = api_instance.department_get_departments_by_company(company_id)
        print("The response of DepartmentsApi->department_get_departments_by_company:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_get_departments_by_company: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **int**|  | 

### Return type

[**List[DepartmentDTO]**](DepartmentDTO.md)

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

# **department_update**
> DepartmentDTO department_update(id, department_request)

Update department

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.department_dto import DepartmentDTO
from prioritize_client.models.department_request import DepartmentRequest
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
    api_instance = prioritize_client.DepartmentsApi(api_client)
    id = 56 # int | 
    department_request = prioritize_client.DepartmentRequest() # DepartmentRequest | 

    try:
        # Update department
        api_response = api_instance.department_update(id, department_request)
        print("The response of DepartmentsApi->department_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DepartmentsApi->department_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **department_request** | [**DepartmentRequest**](DepartmentRequest.md)|  | 

### Return type

[**DepartmentDTO**](DepartmentDTO.md)

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

