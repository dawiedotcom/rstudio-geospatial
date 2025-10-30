# Rstudio with geospatial

The [Dockerfile](Dockerfile) to build [Rstudio with geospatial layer](https://github.com/rocker-org/rocker-versioned2).

## Usage

Run the container with Singularity:
```bash
singularity pull docker://ghcr.io/dawiedotcom/rstudio-geospatial:latest
PASSWORD='<make a temporary password>' singularity exec --scratch /run,/var/lib/rstudio-server --workdir tmp rstudio-geospatial_latest.sif rserver --auth-none=0 --auth-pam-helper-path=pam-helper --server-user=$USER
```
Visit [http://localhost:8787](http://localhost:8787) and login with your Linux user and the temporary password.

## Build

The Docker image is built with a GitHub action that can be triggered manually or when pushing a new tag:
```bash
git clone https://github.com/dawiedotcom/rstudio-geospatial
cd rstudio-geospatial
git tag <new_tag_name>
git push <new_tag_name>
```

## Licence

See [LICENCE](Licence).
