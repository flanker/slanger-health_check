# Slanger::HealthCheck

Health Check endpoint for Slanger service.

## Installation

Install it as:

    $ gem install slanger-health_check

## Usage

Run Slanger with `slanger-health_check`

    $ slanger -i slanger/health_check --app_key YOU_KEY --secret YOUR_SECRET

Then Slanger will have a `health-check` endpoint

```
$ curl -i http://localhost:4567/health-check
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
Content-Length: 0
Connection: keep-alive
Server: thin
```
