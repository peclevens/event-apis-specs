# Event APIs Specifications

This project is part of a set in an effort to create a production's grade application using leading technologies following best practices. The application is intented to have very simple use cases, yet build around sophisticated Software architecture and design principles to assure good Software quality characteristics like maintainability, correctness, reusability, reliability, portability, and efficiency.

The sample application will allow its users to retrieve, create, edit and delete  technology conferences/events and their sessions. This idea was taken from **Joe Eames** and **Jim Cooper** online course [Angular Fundamentals](https://app.pluralsight.com/library/courses/angular-fundamentals) at [Pluralsight](https://pluralsight.com).


## Requirements

To run the APIs documentations portal, the following tools are required:

1. Docker installed, configured and running.


## Getting Started

To run the APIs documentations portal, please run the following command to build a docker image, create and run a docker container name `docs`.

#### 1. with bare Docker commands
```bash
docker build -t event-apis-docs:1.0.0 . && \
	docker run --name event-apis-docs -p 8082:8080 -d event-apis-docs:1.0.0
```

#### 2. with GNU Make

Before you can manage the project with the `make` tool, please make sure it is installed in your system.

```bash
# Build
make build

# Release 
make release

# Clean
make clean

# Optionally you can customize the build by providing environment variables as follow.
make build -e CONTAINER_NAME=docs VERSION=1.0
make release -e CONTAINER_NAME=docs -e PORT=8080 VERSION=1.0
make clean -e CONTAINER_NAME=docs VERSION=1.0
```

After successful execution of the command, please enter the following address in your browser to see the APIs documentations portal.

[http://localhost:8082](http://localhost:8082)

## API List Documentations

Click any link to visit its API specification.

- [Event API](./reference/event-api/)


## Notes
- The following JSON schema keywords `oneOf`, `anyOf` and `allOf` are valid in OpenAPI 3.0, but they are not yet supported in `Swagger Editor` nor in `Postman` which will prevent some schemas from being validated or loaded successfully.


## Author Contact Information

- [Linkedin](https://www.linkedin.com/in/peclevens)
- [Facebook](https://www.facebook.com/peclevens)
- [Twitter](https://twitter.com/peclevens)


## References
- [Convert JSON Schema to Java POJO](https://github.com/joelittlejohn/jsonschema2pojo/wiki/Getting-Started#the-command-line-interface) This converter is available online [here](http://www.jsonschema2pojo.org/) to generate a download Java POJO. It also provides a command line interface (CLI), maven and gradle plugin to generate all POJOs from all schemas in a specific directory.
- [Convert JSON Schema to Java POJO](https://app.quicktype.io/) This converter offers option to convert schemas to other languages like Java, Go, C++, C#, JavaScript, TypeScrypt, Swift, Objective C, Kotlin and others.
- [JSON to Json Schema generator](https://jsonschema.net/)
- [JSON Formatter](http://jsonviewer.stack.hu/)
- [JSON Generator Tool](https://www.json-generator.com/) This site helps creating payload base on prebuilt custom functions.
- [JSON Handy Converter](http://convertjson.com/) This site allows converting JSON to a handfull list of other format like SQL, YAML, CSV, XML, HTML Table and vice versa.
- [Convert JSON to CSV](https://konklone.io/json/)
- [APIMATIC](https://apimatic.io/) Developer platform which allows to generate SDK, Code samples, test cases, docs in a wide range of languages like Java, Android, iOS, Angular, GO, Node and others. Tranform API Specifications from OpenAPI, Swagger, RAML and other format to Postman collections and others.
- [JSON Schema Validator](https://www.jsonschemavalidator.net/)
- [Box API Docs](https://developer.box.com/reference)
- [OpenAPI 3.0.2 Specs](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md)
- [HTTP Status Codes](https://www.restapitutorial.com/httpstatuscodes.html)
- [HTTP Headers docs](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
- [Reusable OpenAPI schemas and others](https://github.com/teamdigitale/openapi)
- [OpenAPI Tools](https://openapi.tools/)
- [Swagger OpenAPI Online Editor](https://editor.swagger.io/)