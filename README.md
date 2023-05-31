# Internet Speed Checker

![Build Status](https://github.com/mransley/speed_checker/actions/workflows/main.yml/badge.svg)

In an attempt to keep my internet service provider honest I thought I would create a service that runs a speed check and then uploads the results into ElasticSearch.  This is the outcome.

## Building

Relatively simple:

    docker build -t michaelransley/speedtester:latest .

## Running

    export URL="https://elastic.mydomain.com:9200/myindex/_doc?pretty"
    export USERNAME="myelasticusername"
    export PASSWORD="myelasticpassword"
    docker run --env URL --env USERNAME --env PASSWORD michaelransley/speedtester:latest
