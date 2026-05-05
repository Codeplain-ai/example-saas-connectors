# SaaS Connectors Example Application

This project contains SaaS connectors built with [***plain](https://plainlang.org/).

Refer to the [*codeplain website](https://codeplain.ai) for installation instructions.

## Why Are SaaS Connectors Easy with ***plain?

Connectors are similar to one another, but their complexity lies in scaling.

Because ***plain simplifies software abstraction details while maintaining the rigor and expressiveness of a programming language, it is easy to scale connectors across multiple SaaS services.

This project shows how to create additional connectors.

## Running *codeplain Rendering

Change the current directory to one of the examples (Intercom/Atlassian Jira/Trello/Zoom).

For the Zoom example, run:
```
codeplain zoom-client.plain
```

After rendering finishes, the generated code will be available in the `/build` subfolder.

### Prerequisites

Create test credentials for the service and add them to the corresponding files in the `/test_credentials` subfolder.

Example credential structures are provided in the `.json.example` files.

## How to Create a New SaaS Connector

- Copy one of the existing connector folders (e.g. `trello`) and name it `{{ saas_name }}`.
- Gather documentation for the third-party SaaS service (e.g. `Trello`).
- Update the ***plain specification with documentation for the third-party SaaS service.