# resin-cloud9

[resin.io](https://resin.io/) stack with the following services:
* [cloud9](https://c9.io/)
* [duplicati](https://www.duplicati.com/)

## Getting Started

see https://docs.resin.io/learn/getting-started

## Deployment

### Application Environment Variables

|Name|Value|
|---|---|
|`TZ`|`America/Toronto`|

### Service Variables

|Service|Name|Value|
|---|---|---|
|`cloud9`|`C9_USER`|`root`|
|`cloud9`|`C9_PASS`|`resin`|

## Usage

* browse to `http://<device-ip>:80` to access the cloud9 ide
* browse to `http://<device-ip>:8200` to access the duplicati admin interface

## Author

Kyle Harding <kylemharding@gmail.com>

## License

_tbd_

## Acknowledgments

* https://github.com/c9/core
* https://github.com/linuxserver/docker-duplicati-armhf
