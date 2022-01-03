# CNBP Samples

## Builder
```bash
make builder
```

## Buildpack
```bash
make buildpack
```

## Stack
```bash
make stack
```

## Sample app
```bash
# Build sample app
make app

# Run web process
docker run --rm -p 8080:8080 my-sample-app

# Run worker process
docker run --rm --entrypoint worker sample-app
```
