# prioritize_client.TasksApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**task_add_tracking_session**](TasksApi.md#task_add_tracking_session) | **POST** /api/v1/tasks/{id}/tracking/sessions | Books a work session by hand that was never clocked
[**task_assign_goal**](TasksApi.md#task_assign_goal) | **PUT** /api/v1/tasks/{id}/goal/{goalId} | Assign goal
[**task_assign_task**](TasksApi.md#task_assign_task) | **PUT** /api/v1/tasks/{id}/assignee/{actorId} | Assign task
[**task_change_status**](TasksApi.md#task_change_status) | **PUT** /api/v1/tasks/{id}/status | Change status
[**task_create_task**](TasksApi.md#task_create_task) | **POST** /api/v1/projects/{projectId}/tasks | Creates a task on the given project&#39;s blackboard
[**task_delete_task**](TasksApi.md#task_delete_task) | **DELETE** /api/v1/tasks/{id} | Delete task
[**task_delete_tracking_session**](TasksApi.md#task_delete_tracking_session) | **DELETE** /api/v1/tasks/{id}/tracking/sessions/{sessionId} | Removes a completed work session
[**task_get_task**](TasksApi.md#task_get_task) | **GET** /api/v1/tasks/{id} | Get task
[**task_get_tracking**](TasksApi.md#task_get_tracking) | **GET** /api/v1/tasks/{id}/tracking | Returns the total time tracked on the task (completed spans plus the running one, live)
[**task_get_tracking_sessions**](TasksApi.md#task_get_tracking_sessions) | **GET** /api/v1/tasks/{id}/tracking/sessions | Returns the individual tracked work sessions of the task (completed spans plus the running one)
[**task_start_tracking**](TasksApi.md#task_start_tracking) | **POST** /api/v1/tasks/{id}/tracking/start | Start tracking
[**task_stop_tracking**](TasksApi.md#task_stop_tracking) | **POST** /api/v1/tasks/{id}/tracking/stop | Stop tracking
[**task_stop_tracking_at**](TasksApi.md#task_stop_tracking_at) | **POST** /api/v1/tasks/{id}/tracking/stop-at | Stops the running work session at an earlier point in time
[**task_toggle_tracking**](TasksApi.md#task_toggle_tracking) | **POST** /api/v1/tasks/{id}/tracking/toggle | Toggle tracking
[**task_unassign_goal**](TasksApi.md#task_unassign_goal) | **DELETE** /api/v1/tasks/{id}/goal | Unassign goal
[**task_unassign_task**](TasksApi.md#task_unassign_task) | **DELETE** /api/v1/tasks/{id}/assignee | Unassign task
[**task_update_task**](TasksApi.md#task_update_task) | **PATCH** /api/v1/tasks/{id} | Update task
[**task_update_tracking_session**](TasksApi.md#task_update_tracking_session) | **PUT** /api/v1/tasks/{id}/tracking/sessions/{sessionId} | Corrects the start and end of a completed work session


# **task_add_tracking_session**
> WorkSession task_add_tracking_session(id, work_session_request)

Books a work session by hand that was never clocked

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.work_session import WorkSession
from prioritize_client.models.work_session_request import WorkSessionRequest
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    work_session_request = prioritize_client.WorkSessionRequest() # WorkSessionRequest | 

    try:
        # Books a work session by hand that was never clocked
        api_response = api_instance.task_add_tracking_session(id, work_session_request)
        print("The response of TasksApi->task_add_tracking_session:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_add_tracking_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **work_session_request** | [**WorkSessionRequest**](WorkSessionRequest.md)|  | 

### Return type

[**WorkSession**](WorkSession.md)

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

# **task_assign_goal**
> TaskDTO task_assign_goal(id, goal_id)

Assign goal

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    goal_id = 56 # int | 

    try:
        # Assign goal
        api_response = api_instance.task_assign_goal(id, goal_id)
        print("The response of TasksApi->task_assign_goal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_assign_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **goal_id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_assign_task**
> TaskDTO task_assign_task(id, actor_id)

Assign task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    actor_id = 56 # int | 

    try:
        # Assign task
        api_response = api_instance.task_assign_task(id, actor_id)
        print("The response of TasksApi->task_assign_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_assign_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **actor_id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_change_status**
> TaskDTO task_change_status(id, task_status_request)

Change status

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
from prioritize_client.models.task_status_request import TaskStatusRequest
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    task_status_request = prioritize_client.TaskStatusRequest() # TaskStatusRequest | 

    try:
        # Change status
        api_response = api_instance.task_change_status(id, task_status_request)
        print("The response of TasksApi->task_change_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_change_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **task_status_request** | [**TaskStatusRequest**](TaskStatusRequest.md)|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_create_task**
> TaskDTO task_create_task(project_id, task_request)

Creates a task on the given project's blackboard

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
from prioritize_client.models.task_request import TaskRequest
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
    api_instance = prioritize_client.TasksApi(api_client)
    project_id = 56 # int | 
    task_request = prioritize_client.TaskRequest() # TaskRequest | 

    try:
        # Creates a task on the given project's blackboard
        api_response = api_instance.task_create_task(project_id, task_request)
        print("The response of TasksApi->task_create_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_create_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **task_request** | [**TaskRequest**](TaskRequest.md)|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_delete_task**
> task_delete_task(id)

Delete task

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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Delete task
        api_instance.task_delete_task(id)
    except Exception as e:
        print("Exception when calling TasksApi->task_delete_task: %s\n" % e)
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

# **task_delete_tracking_session**
> task_delete_tracking_session(id, session_id)

Removes a completed work session

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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    session_id = 56 # int | 

    try:
        # Removes a completed work session
        api_instance.task_delete_tracking_session(id, session_id)
    except Exception as e:
        print("Exception when calling TasksApi->task_delete_tracking_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **session_id** | **int**|  | 

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

# **task_get_task**
> TaskDTO task_get_task(id)

Get task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Get task
        api_response = api_instance.task_get_task(id)
        print("The response of TasksApi->task_get_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_get_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_get_tracking**
> TrackingSummary task_get_tracking(id)

Returns the total time tracked on the task (completed spans plus the running one, live)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.tracking_summary import TrackingSummary
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Returns the total time tracked on the task (completed spans plus the running one, live)
        api_response = api_instance.task_get_tracking(id)
        print("The response of TasksApi->task_get_tracking:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_get_tracking: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TrackingSummary**](TrackingSummary.md)

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

# **task_get_tracking_sessions**
> List[WorkSession] task_get_tracking_sessions(id)

Returns the individual tracked work sessions of the task (completed spans plus the running one)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.work_session import WorkSession
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Returns the individual tracked work sessions of the task (completed spans plus the running one)
        api_response = api_instance.task_get_tracking_sessions(id)
        print("The response of TasksApi->task_get_tracking_sessions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_get_tracking_sessions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List[WorkSession]**](WorkSession.md)

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

# **task_start_tracking**
> TaskDTO task_start_tracking(id)

Start tracking

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Start tracking
        api_response = api_instance.task_start_tracking(id)
        print("The response of TasksApi->task_start_tracking:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_start_tracking: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_stop_tracking**
> TaskDTO task_stop_tracking(id)

Stop tracking

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Stop tracking
        api_response = api_instance.task_stop_tracking(id)
        print("The response of TasksApi->task_stop_tracking:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_stop_tracking: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_stop_tracking_at**
> TaskDTO task_stop_tracking_at(id, stop_at_request)

Stops the running work session at an earlier point in time

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.stop_at_request import StopAtRequest
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    stop_at_request = prioritize_client.StopAtRequest() # StopAtRequest | 

    try:
        # Stops the running work session at an earlier point in time
        api_response = api_instance.task_stop_tracking_at(id, stop_at_request)
        print("The response of TasksApi->task_stop_tracking_at:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_stop_tracking_at: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **stop_at_request** | [**StopAtRequest**](StopAtRequest.md)|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_toggle_tracking**
> TaskDTO task_toggle_tracking(id)

Toggle tracking

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Toggle tracking
        api_response = api_instance.task_toggle_tracking(id)
        print("The response of TasksApi->task_toggle_tracking:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_toggle_tracking: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_unassign_goal**
> TaskDTO task_unassign_goal(id)

Unassign goal

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Unassign goal
        api_response = api_instance.task_unassign_goal(id)
        print("The response of TasksApi->task_unassign_goal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_unassign_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_unassign_task**
> TaskDTO task_unassign_task(id)

Unassign task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 

    try:
        # Unassign task
        api_response = api_instance.task_unassign_task(id)
        print("The response of TasksApi->task_unassign_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_unassign_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_update_task**
> TaskDTO task_update_task(id, task_request)

Update task

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_dto import TaskDTO
from prioritize_client.models.task_request import TaskRequest
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    task_request = prioritize_client.TaskRequest() # TaskRequest | 

    try:
        # Update task
        api_response = api_instance.task_update_task(id, task_request)
        print("The response of TasksApi->task_update_task:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_update_task: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **task_request** | [**TaskRequest**](TaskRequest.md)|  | 

### Return type

[**TaskDTO**](TaskDTO.md)

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

# **task_update_tracking_session**
> WorkSession task_update_tracking_session(id, session_id, work_session_request)

Corrects the start and end of a completed work session

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.work_session import WorkSession
from prioritize_client.models.work_session_request import WorkSessionRequest
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
    api_instance = prioritize_client.TasksApi(api_client)
    id = 56 # int | 
    session_id = 56 # int | 
    work_session_request = prioritize_client.WorkSessionRequest() # WorkSessionRequest | 

    try:
        # Corrects the start and end of a completed work session
        api_response = api_instance.task_update_tracking_session(id, session_id, work_session_request)
        print("The response of TasksApi->task_update_tracking_session:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TasksApi->task_update_tracking_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **session_id** | **int**|  | 
 **work_session_request** | [**WorkSessionRequest**](WorkSessionRequest.md)|  | 

### Return type

[**WorkSession**](WorkSession.md)

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

