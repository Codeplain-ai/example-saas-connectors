# How to spec a SaaS connector

This guide will help you spec a SaaS connector using your favorite LLM. It's a series of prompt templates that should help you define OpenAPI specification of the API and store test credentials in a json file. Once you have these you're ready to render the code using the provided Plain source code.

# Prompts

You should replace {{ saas }} with the name of the SaaS connector you're specing (e.g. Intercom).

## Prompt 1

```
Does {{ saas }} have an API?
```

## Prompt 2

```
What is the endpoint of the API?
```

## Prompt 3

```
What kind of authorization does the API have?
```

Store the credentials in the file {{ saas }}_credentials.json (e.g. intercom_credentials.json) and store it in the folder *credentials*.

## Prompt 4

```
Does {{ saas }} provide endpoint for accessing list of users?
```

### Prompt 5

```
Please generate OpenAPI spefication of {{ saas }} api in json format. Include only details how to connect and 
authenticate to the API and the information about the endpoint for accessing list of users?
```

Store the file as {{saas}}-openapi.json (e.g. intercom-openapi.json) and store it in the folder *openapi-specs*.
