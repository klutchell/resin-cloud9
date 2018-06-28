# resin-cloud9

[resin.io](https://resin.io/) stack with the following services:
* [cloud9 web ide](https://c9.io/)
* [duplicity backups](https://github.com/blacklabelops/volumerize)

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
|`volumerize`|`AWS_ACCESS_KEY_ID`|`QQWDQIWIDO1QO`|
|`volumerize`|`AWS_SECRET_ACCESS_KEY`|`ewlfkwkejflkjwlkej3fjw381`|
|`volumerize`|`PASSPHRASE`|`secretgpgpassword`|
|`volumerize`|`VOLUMERIZE_FULL_IF_OLDER_THAN`|`7D`|
|`volumerize`|`VOLUMERIZE_TARGET`|`s3://s3.eu-central-1.amazonaws.com/duplicitytest`|

## Usage

browse to `http://<device-ip>:80` to access the cloud9 ide

## Author

Kyle Harding <kylemharding@gmail.com>

## License

_tbd_

## Acknowledgments

* https://github.com/c9/core
* https://github.com/blacklabelops/volumerize
