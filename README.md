# ihan.fi


### Building and running locally
```shell
docker build -t ihanfi .
docker run --rm -it -p 8080:8080 --env=PORT=8080 --env=HOSTNAME=ihan.fake --name ihanfi ihanfi
```
