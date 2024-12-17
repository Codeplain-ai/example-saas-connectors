# SaaS Connectors example application

Example application how to implement SaaS connectors in Plain.

## Prerequisites

You need ***plain2code*** renderer set up. Please see [plain2code_client](https://github.com/Codeplain-ai/plain2code_client) repository for details how to set it up.

You need to set `PLAIN2CODE_RENDERER_DIR` environmental variable to the directory containing the plain2code.py script.

## Usage

To have a SaaS connector rendered to executable software code run

`sh render.sh {{ saas_label }} -v`

where `{{ saas_label }}` is the label of the SaaS connector you want to render (e.g. `intercom`).

The resulting software code will be stored to `clients/{{ saas_label }}/build` folder. To run it execute

```
sh run.sh {{ saas_label }}
```

## Plain source

Plain source of the Saas Connectors example application is the folder

`clients`

## Test credentials

You should have received test credentials when your Anthropic Claude API key was authorized to have access to plain2code rendered. Please contact Codeplain.ai support at support@codeplain.ai if that was not the case.
