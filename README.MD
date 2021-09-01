## Create a Custom Dockerfile.dev

To run a custom Dockerfile, we use
```
docker build -f Dockerfile.dev .
```

## Delete duplicate dependencies
Docker already has a copy of node_modules, so we can delete our local node_modules.

## Starting the Container
```
docker run -it -p 3000:3000 imageId
```

## Make changes to the src/APP.js
Made changes to the src/APP.js files and update the changes without stop it, rebuild the image

```
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app a5395daf3b45092e8c6ed
```

## Run Nginx
```
docker build .
docker run -p 8080:80 5f1dc4492fb7391b99ae9d87
```