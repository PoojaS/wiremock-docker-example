# WireMock API Mock

A Docker-based WireMock setup for mocking APIs during development.

## Setup and Usage

### Prerequisites

- Docker
- Docker Compose

### Running the WireMock Server

1. Build and start the WireMock container:

```bash
cd wiremock-api-mock
docker-compose up -d
```

2. Verify that the WireMock server is running:

```bash
docker ps
```

You should see the `wiremock-api-mock` container running.

### Testing the Mock APIs

#### GET Example

```bash
curl http://localhost:8080/api/example
```

Expected response:
```json
{
  "id": 1,
  "name": "Example Resource",
  "status": "active",
  "createdAt": "2025-03-14",
  "data": {
    "field1": "value1",
    "field2": "value2"
  }
}
```

#### POST Example

```bash
curl -X POST \
  http://localhost:8080/api/example \
  -H 'Content-Type: application/json' \
  -d '{"name": "New Resource"}'
```

Expected response:
```json
{
  "id": "12345",
  "name": "New Resource",
  "status": "created",
  "createdAt": "2025-03-14 10:41:00",
  "message": "Resource created successfully"
}
```

### Stopping the WireMock Server

```bash
docker-compose down
```

## Adding New Mock APIs

To add new mock APIs, create JSON files in the `mappings` directory. WireMock will automatically load these mappings when the container starts.

For static response bodies, you can place files in the `__files` directory and reference them in your mappings.

## WireMock Documentation

For more information on how to create mappings and use WireMock features, refer to the [WireMock documentation](http://wiremock.org/docs/).
