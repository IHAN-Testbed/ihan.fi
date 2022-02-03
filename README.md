# ihan.fi

This repository contains the code for the https://ihan.fi site.

The site consists of static content that is located in the [html](html) directory.
GitHub Actions are used to build a Docker image, with nginx serving the static 
content, pushing it to GCR and deploy it using Google Cloud Run.


### Building and running locally

You can build and run the container locally by running:

```shell
docker build -t ihan-fi .
docker run --rm -it -p 8080:8080 --env=HOSTNAME=localhost --env=REDIRECT_PORT=:8080 --env=REDIRECT_PROTOCOL=http --name ihan-fi ihan-fi
```

and then view the site at [http://localhost:8080](http://localhost:8080).
