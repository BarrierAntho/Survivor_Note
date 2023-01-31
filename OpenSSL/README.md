# OpenSSL

## Content
- [Historic :clock7:](#historic-clock7)
- [General](#general)
- [Cheat Section :trollface:](#cheat-section-trollface)
- [Sources :link:](#sources-link)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2023-01-31|Init|

## General
[Go to content](#content)


## Certificate request
The req command primarily creates and processes certificate requests in PKCS#10 format. It can additionally create self signed certificates for use as root CAs for example.<br>
```
openssl req [OPTIONS]
```
***Options :wrench:***
|Name/Shorthand|Description|
|-|-|
|-keyout filename|this gives the filename to write the newly created private key to. If this option is not specified then the filename present in the configuration file is used.|
|-new|this option generates a new certificate request. It will prompt the user for the relevant field values. The actual fields prompted for and their maximum and minimum sizes are specified in the configuration file and any requested extensions.<br>If the -key option is not used it will generate a new RSA private key using information specified in the configuration file.|
|-nodes|if this option is specified then if a private key is created it will not be encrypted.|
|-noout|this option prevents output of the encoded version of the request.|
|-out filename|This specifies the output filename to write to or standard output by default.|
|-subject|prints out the request subject (or certificate subject if -x509 is specified)|
|-subj arg|Replaces subject field of input request with specified data and outputs modified request. The arg must be formatted as /type0=value0/type1=value1/type2=..., characters may be escaped by \ (backslash), no spaces are skipped.|
|-verbose|print extra details about the operations being performed.|
|-x509|this option outputs a self signed certificate instead of a certificate request. This is typically used to generate a test certificate or a self signed root CA. The extensions added to the certificate (if any) are specified in the configuration file. Unless specified using the set_serial option, a large random number will be used for the serial number.<br>If existing request is specified with the -in option, it is converted to the self signed certificate otherwise new request is created.|

> :pushpin: Issuer are mandatory during certificate generation process. If self  certificate, it is important to use the option 'subject args'.<br>
> :pencil2: Example:<br>
> ```
> openssl req -x509 -nodes -subject 
> ```

## Cheat Section :trollface:
[Go to content](#content)


## Lexic
|Name|Description|
|-|-|
|xx|yy|

## Sources :link:
[Go to content](#content)

### OpenSSL

### Certificates
- https://www.openssl.org/docs/man1.0.2/man1/openssl-req.html
- https://www.ibm.com/docs/en/hpvs/1.2.x?topic=servers-creating-ca-signed-certificates-monitoring-infrastructure
- https://www.ibm.com/docs/en/hpvs/1.2.x?topic=reference-openssl-configuration-examples

### Miscellaneous

