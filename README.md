This Python script updates an SSL certificate on a Synology DiskStation

# Requirements
* see requirements.txt

# Assumptions
This script assumes that you have already imported the certificate into Synology once. This script looks for a certificate with the same common name as the certificate that was issued. For example, if your certificate is for www.example.com, the script will attempt to update the equivalent Synology certificate with the common name www.example.com

# Usage
## Example
python3 synology.py --base_url "https://ds.example.com:5001" --username bob --private_key tls.key --fullchain tls.crt [--password <passwd>]

## Certbot Usage
### Certbot Renewal Command
```shell script
certbot renew ... --deploy-hook /path/to/deployhook.sh
```

### deployhook.sh
```shell script
python3 /path/to/synology.py --base_url "https://ds.example.com:5001" --username bob --private_key tls.key --fullchain tls.crt [--password <passwd>]
```
