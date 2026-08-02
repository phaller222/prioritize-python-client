# prioritize_client.ProcessInstancesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**process_instance_cancel**](ProcessInstancesApi.md#process_instance_cancel) | **POST** /api/v1/process-instances/{id}/cancel | Stops a running instance
[**process_instance_get**](ProcessInstancesApi.md#process_instance_get) | **GET** /api/v1/process-instances/{id} | A single instance by its engine id
[**process_instance_get_for_project**](ProcessInstancesApi.md#process_instance_get_for_project) | **GET** /api/v1/projects/{projectId}/process-instances | All instances belonging to a project — its own and those of its tasks, running or finished
[**process_instance_get_for_task**](ProcessInstancesApi.md#process_instance_get_for_task) | **GET** /api/v1/tasks/{taskId}/process-instance | The instance a task is linked to
[**process_instance_start_for_project**](ProcessInstancesApi.md#process_instance_start_for_project) | **POST** /api/v1/projects/{projectId}/process-instances | Starts a process for a whole project
[**process_instance_start_for_task**](ProcessInstancesApi.md#process_instance_start_for_task) | **POST** /api/v1/tasks/{taskId}/process-instances | Starts a process for a single task and links the two


# **process_instance_cancel**
> process_instance_cancel(id, cancel_process_instance_request=cancel_process_instance_request)

Stops a running instance

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.cancel_process_instance_request import CancelProcessInstanceRequest
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    id = 'id_example' # str | 
    cancel_process_instance_request = prioritize_client.CancelProcessInstanceRequest() # CancelProcessInstanceRequest |  (optional)

    try:
        # Stops a running instance
        api_instance.process_instance_cancel(id, cancel_process_instance_request=cancel_process_instance_request)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_cancel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **cancel_process_instance_request** | [**CancelProcessInstanceRequest**](CancelProcessInstanceRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **process_instance_get**
> ProcessInstanceDTO process_instance_get(id)

A single instance by its engine id

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    id = 'id_example' # str | 

    try:
        # A single instance by its engine id
        api_response = api_instance.process_instance_get(id)
        print("The response of ProcessInstancesApi->process_instance_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**ProcessInstanceDTO**](ProcessInstanceDTO.md)

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

# **process_instance_get_for_project**
> List[ProcessInstanceDTO] process_instance_get_for_project(project_id)

All instances belonging to a project — its own and those of its tasks, running or finished

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    project_id = 56 # int | 

    try:
        # All instances belonging to a project — its own and those of its tasks, running or finished
        api_response = api_instance.process_instance_get_for_project(project_id)
        print("The response of ProcessInstancesApi->process_instance_get_for_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_get_for_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 

### Return type

[**List[ProcessInstanceDTO]**](ProcessInstanceDTO.md)

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

# **process_instance_get_for_task**
> ProcessInstanceDTO process_instance_get_for_task(task_id)

The instance a task is linked to

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    task_id = 56 # int | 

    try:
        # The instance a task is linked to
        api_response = api_instance.process_instance_get_for_task(task_id)
        print("The response of ProcessInstancesApi->process_instance_get_for_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_get_for_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **int**|  | 

### Return type

[**ProcessInstanceDTO**](ProcessInstanceDTO.md)

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

# **process_instance_start_for_project**
> ProcessInstanceDTO process_instance_start_for_project(project_id, start_process_instance_request)

Starts a process for a whole project

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO
from prioritize_client.models.start_process_instance_request import StartProcessInstanceRequest
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    project_id = 56 # int | 
    start_process_instance_request = prioritize_client.StartProcessInstanceRequest() # StartProcessInstanceRequest | 

    try:
        # Starts a process for a whole project
        api_response = api_instance.process_instance_start_for_project(project_id, start_process_instance_request)
        print("The response of ProcessInstancesApi->process_instance_start_for_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_start_for_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **start_process_instance_request** | [**StartProcessInstanceRequest**](StartProcessInstanceRequest.md)|  | 

### Return type

[**ProcessInstanceDTO**](ProcessInstanceDTO.md)

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

# **process_instance_start_for_task**
> ProcessInstanceDTO process_instance_start_for_task(task_id, start_process_instance_request)

Starts a process for a single task and links the two

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO
from prioritize_client.models.start_process_instance_request import StartProcessInstanceRequest
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
    api_instance = prioritize_client.ProcessInstancesApi(api_client)
    task_id = 56 # int | 
    start_process_instance_request = prioritize_client.StartProcessInstanceRequest() # StartProcessInstanceRequest | 

    try:
        # Starts a process for a single task and links the two
        api_response = api_instance.process_instance_start_for_task(task_id, start_process_instance_request)
        print("The response of ProcessInstancesApi->process_instance_start_for_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProcessInstancesApi->process_instance_start_for_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **int**|  | 
 **start_process_instance_request** | [**StartProcessInstanceRequest**](StartProcessInstanceRequest.md)|  | 

### Return type

[**ProcessInstanceDTO**](ProcessInstanceDTO.md)

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

