# Internet Speed Checker

In an attempt to keep my internet service provider honest I thought I would create a service that runs a speed check and then uploads the results into ElasticSearch.  This is the outcome.

## Building

Relatively simple:

    docker build -t ransley/michaelransley:latest .

## Running

    export URL="https://elastic.mydomain.com:9200/myindex/_doc?pretty"
    export USERNAME="myelasticusername"
    export PASSWORD="myelasticpassword"
    docker run --env URL --env USERNAME --env PASSWORD michaelransley/speedtest:latest
