# About This Repo
Welcome to the Containerization 101 presentation cheatsheet! This repository serves as a practical guide for users who attended the presentation and want to apply containerization concepts on their own.
## Just run our first container !
```bash
docker run -d -p 8080:80 --name milvus-web-server nginx
```

## Simple web application deployment flow
### Build
```bash
docker buildx build -t web-app:VERSION .
```

### Run
Run one version of web-app
```bash
docker compose -f single-version.yml up -d
```
Run multiple versions of web-app
```bash
docker compose -f multiple-version.yml up -d
```
