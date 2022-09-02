# template

## Content
- [Historic :clock7:](#historic-clock7)
- [Sources :link:](#sources-link)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-09-01|Init|

## Basic

Ip address and subnet mask are mandatory to get a correct network

To set a correct ip address or the subnet mask, it is very important to convert the value into binary value

Class|Address|Mask|
|:-|:-|
A||
B||
C||
D||
E||

|1|2|3|4|5|6|7|8|
|:-|:-|:-|:-|:-|:-|:-|:-|
|128|64|32|16|8|4|2|1|

Total of subnet:
```
2^n_bit_on
```

Ip adress range from a subnet
```
2^n_bit_off - 2 (the first is the network ID and the last is the broadcast)
```

__Example:__
subnet mask value|128|64|32|16|8|4|2|1|
|:-|:-|:-|:-|:-|:-|:-|:-|:-|
255|0|0|0|0|0|0|0|0|
128|1|0|0|0|0|0|0|0|
192|1|1|0|0|0|0|0|0|
224|1|1|1|0|0|0|0|0|
240|1|1|1|1|0|0|0|0|
248|1|1|1|1|1|0|0|0|
252|1|1|1|1|1|1|0|0|

```
Subnet mask = 255
n_subnet = 2^0 = 1
n_host per subnet = 2^8 - 2 = 255 - 2
ip address range = 0 -> 255 (0 = network ID, 255 = broadcast)

Subnet mask = 128
n_subnet = 2^1 = 2
n_host per subnet = 2^7 -2 = 128 - 2
ip address range = 0 -> 127; 128 -> 255

Subnet mask = 192
n_subnet = 2^2 = 4
n_host per subnet = 2^6 - 2 = 64 - 2
ip address range = 0 -> 63; 64 -> 127; 128 -> 191; 192 -> 255

Subnet mask = 224
n_subnet = 2^3 = 8
n_host per subnet = 2^5 - 2 = 32 - 2
ip address range = 0 -> 31; 32 -> 63; 64 -> 95; 96 -> 127; 128 -> 159; 160 -> 191; 192 -> 223; 224 -> 255
```

## Sources :link:
[Go to content](#content)
