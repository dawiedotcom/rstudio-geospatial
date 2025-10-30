FROM rocker/rstudio:4.5.1
#RUN apt-get update && apt-get install -y \
#    cmake
RUN /rocker_scripts/install_geospatial.sh

