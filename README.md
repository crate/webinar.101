# CrateDB 101 Webinar Series

This is all the material for the webinar series and we'll update it as we go, so make sure to check back later, as there will be additional material coming. Follow us on twitter for updates, too!
[Claus](https://twitter.com/claus__m) & [crate.io](https://twitter.com/crateio)

Any content below can be found in the corresponding directories. Feel free to add suggestions and errors for us to fix any issues you might have. We wish you happy digging in this repository!

## Cluster

The webinar will use [packet.net](https://packet.net) infrastructure to run CrateDB and other things.

*This may not be available after the webinars*

[Sensordata cluster](http://147.75.64.195:4280)

## Sensor Data
The first webinar will cover how to get started with a Python, a Raspberry Pi, [CrateDB](https://crate.io), and [Grafana](https://grafana.com).

Install the provided Python requirements with `pip install -r sensordata/requirements.txt`.

In case you missed this webinar, we have put a recording on Youtube: https://www.youtube.com/watch?v=v132uRpaIt8

## Log Data

Log data is often mined to gain insights about users, the system or the world ... and [CrateDB](https://crate.io) can help with this. Together with a log collector (such as [fluentd](https://www.fluentd.org) - with a [CrateDB plugin](https://github.com/buom/fluent-plugin-cratedb)) and a dashboard engine (e.g. [Grafana](https://grafana.com)) it's easy enough to find out more.


The webinar uses a [data generator based on a Python project that fakes apache2 access logs](https://github.com/kiritbasu/Fake-Apache-Log-Generator/). Find the Docker container [here](https://hub.docker.com/r/crate/fake-apache-log-generator/).

A recording of the webinar is also available on Youtube: https://www.youtube.com/watch?v=fT-eVJru_Q8

## Geospatial Data

Location-based applications have become more and more sophisticated over the last years. [CrateDB](https://crate.io) harbors many capabilities to work with spatial data and facilitate queries using Lucene. Since our [blog post](https://crate.io/a/geo-shapes-in-crate/) is already old (but far from stale), this webinar shows how to utilize CrateDB's abilities on a data set as large as [NYC's 311 open data](https://nycopendata.socrata.com/Social-Services/311-data/fkh3-qjxr/data).

Watch here: https://www.youtube.com/watch?v=NztR_xhV-fY

# LICENSE

Apache 2.0
