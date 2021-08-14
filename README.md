# libsslkeylogfile

This library is designed for retrieve master secret in TLS sessions in [Mozilla NSS format](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/Key_Log_Format)

## Requirements

 - OpenSSL 1.1.1 or greater - The API required, `SSL_CTX_set_keylog_callback`, is not available with version below 1.1.1
 - SSL-enabled program utilises OpenSSL and **dynamically linked** to `libssl`

## Build

```bash
cd /path/to/libsslkeylogfile
make
```

`libsslkeylogfile.so` will present after a successful build.

## Usage

```bash
LD_PRELOAD='/path/to/libsslkeylogfile.so' \
LIBSSL_SSLKEYLOGFILE=/tmp/sslkeylogfile \
curl -I https://example.com
```

Packet capture tools compatible with Mozilla NSS `sslkeylogfile`, i.e. Wireshark, can be used to inspect payload in TLS traffic after [configured](https://wiki.wireshark.org/TLS#Using_the_.28Pre.29-Master-Secret).