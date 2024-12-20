# How to spec a SaaS connector

This guide will help you spec a SaaS connector using your favorite LLM. It's a series of prompt templates that should help you define OpenAPI specification of the API and store test credentials in a json file. Once you have these you're ready to render the code using the provided Plain source code.

# Prompts

You should replace {{ saas }} with the name of the SaaS connector you're specing (e.g. Intercom).

## Prompt 1

- > Does {{ saas }} have an API?

## Prompt 2

- > What is the endpoint of the API?

## Prompt 3

- > What kind of authorization does the API have?

Store the credentials in the file {{ saas }}_credentials.json (e.g. intercom_credentials.json) and store it in the folder *credentials*.

## Prompt 4

- > Does {{ saas }} provide endpoint for accessing list of users?

### Prompt 5

- > Please generate OpenAPI spefication of {{ saas }} api in json format. Include only details how to connect and  authenticate to the API and the information about the endpoint for accessing list of users?

Store the file as {{saas}}-openapi.json (e.g. intercom-openapi.json) and store it in the folder *openapi-specs*.

# An example specification

Here is an example chat with GPT-4o that was used to spec the *Intercom* connector.

- > Does Intercom have an API?

  Yes, Intercom has an API. You can use it to interact with various features of Intercom, such as managing users, conversations, and more. You can find detailed documentation on their [official API documentation page](https://developers.intercom.com).
  
    
- > What is the endpoint of the API?

  The base endpoint for the Intercom API is:

  ```
  https://api.intercom.io/
  ```

  You can append specific paths to this base URL to access different resources, such as users, conversations, and messages. Always refer to the Intercom API documentation for the most up-to-date information on available endpoints and their usage.

- > What kind of authorization does the API have?

  The Intercom API uses Bearer Token authentication for authorization. You need to include an access token in the Authorization header of your HTTP requests, like so:

  ```
  Authorization: Bearer YOUR_ACCESS_TOKEN
  ```

  You can obtain the access token from your Intercom account settings or through OAuth if you're building an application that integrates with Intercom. Always ensure your token is kept secure.

- > Does Intercom provide endpoint for accessing list of users?

  Yes, Intercom provides an endpoint to access a list of users. You can use the following endpoint:

  ```
  GET https://api.intercom.io/users
  ```

  This will return a list of users in your Intercom workspace. You can use query parameters to filter and paginate the results. Check the Intercom API documentation for more details on available parameters and response structure.

- > Please generate OpenAPI spefication of Intercom api in json format. Include only details how to connect and authenticate to the API and the information about the endpoint for accessing list of users?

  Here's a simplified OpenAPI specification in JSON format for connecting to the Intercom API and accessing the list of users:

  *See the file [intercom-openapi.json](openapi-specs/intercom-openapi.json) for the full specification.*

  This JSON provides the basic structure for connecting to the Intercom API, authenticating with a Bearer token, and accessing the list of users. You can expand it with more details as needed.
