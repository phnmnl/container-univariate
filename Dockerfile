FROM ubuntu:16.04

# Some change to trigger Jenkins

MAINTAINER Etienne Thevenot (etienne.thevenot@cea.fr)

ENV TOOL_VERSION=2.2.6
ENV CONTAINER_VERSION=1.3

LABEL version="${CONTAINER_VERSION}"
LABEL tool_version="${TOOL_VERSION}"

# Update system
RUN apt-get update
RUN apt-get install -y --no-install-recommends r-base git

# Clone tool repos
RUN git clone -b v${TOOL_VERSION} https://github.com/workflow4metabolomics/univariate /files/univariate

# Install requirements
RUN echo 'options("repos"="http://cran.rstudio.com")' >> /etc/R/Rprofile.site
RUN R -e "install.packages(c('batch','PMCMR'), dependencies = TRUE)"

# Clean
RUN apt-get purge -y git
RUN apt-get clean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Make tool accessible through PATH
ENV PATH=$PATH:/files/univariate

# Make test script accessible through PATH
ENV PATH=$PATH:/files/univariate/test

# Define Entry point script
ENTRYPOINT ["/files/univariate/univariate_wrapper.R"]
