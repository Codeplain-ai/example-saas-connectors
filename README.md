# SaaS Connectors example application

Example application how to implement SaaS connectors in Plain.

## Prerequisites

You need ***plain2code*** renderer set up. Please see [plain2code_client](https://github.com/Codeplain-ai/plain2code_client) repository for details how to set it up.

You need to set `PLAIN2CODE_RENDERER_DIR` environmental variable to the directory containing the plain2code.py script.

## Usage

To render a SaaS connector to executable software code run

```
sh render.sh {{ saas_label }} -v
```

where `{{ saas_label }}` is the label of the SaaS connector you want to render (e.g. `intercom`).

The resulting software code will be stored to `clients/{{ saas_label }}/build` folder. To run it execute

```
sh run.sh {{ saas_label }}
```

## Plain source

Plain source of the Saas Connectors example application is in the folder

```
clients
```


## SaaS Connector Specification

To add a new SaaS connector all you need to do is:

1. Add OpenAPI specification of the SaaS connector to the `openapi-specs` folder.
2. Add test credentials of the SaaS connector to the `credentials` folder.
3. Duplicate one of the existing `{{ saas_label }}-client.plain` files, name it `{{ saas_label }}-client.plain` and change it to specify the new SaaS connector.

Please see [How to spec a SaaS connector](how_to_spec_saas_connector.md) for details how you can use your favorite LLM to help you define the specification.

## Test credentials

You should have received test credentials when your Anthropic Claude API key was authorized to have access to plain2code rendered. Please contact Codeplain.ai support at support@codeplain.ai if that was not the case.
