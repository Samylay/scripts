Certainly! I'll create a Markdown document that summarizes the process you've gone through to set up and persist your wireless connection. Here's the documentation:

```markdown
# IONIS Wireless Network Configuration Guide

## Initial Setup and Troubleshooting

1. Create wpa_supplicant configuration file:
   ```bash
   sudo nano /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
   ```
   Add the following content:
   ```
   ctrl_interface=/run/wpa_supplicant
   update_config=1
   country=FR

   network={
       ssid="IONIS"
       key_mgmt=WPA-EAP
       eap=PEAP
       identity="samy.layaida@epitech.eu"
       password="your_password"
       phase2="auth=MSCHAPV2"
   }
   ```

2. Stop existing wpa_supplicant processes:
   ```bash
   sudo killall wpa_supplicant
   ```

3. Remove existing control interface file:
   ```bash
   sudo rm /run/wpa_supplicant/wlan0
   ```

4. Disable NetworkManager:
   ```bash
   sudo systemctl stop NetworkManager
   sudo systemctl disable NetworkManager
   ```

5. Start wpa_supplicant:
   ```bash
   sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant-wlan0.conf -d
   ```

6. Obtain IP address:
   ```bash
   sudo dhclient wlan0
   ```

## Persisting Configuration Across Reboots

### Using systemd-networkd and wpa_supplicant

1. Enable and start required services:
   ```bash
   sudo systemctl enable systemd-networkd
   sudo systemctl start systemd-networkd
   sudo systemctl enable wpa_supplicant@wlan0
   sudo systemctl start wpa_supplicant@wlan0
   ```

2. Create network configuration:
   ```bash
   sudo nano /etc/systemd/network/25-wireless.network
   ```
   Add:
   ```
   [Match]
   Name=wlan0

   [Network]
   DHCP=yes
   ```

3. Ensure correct wpa_supplicant configuration location:
   ```bash
   sudo mv /etc/wpa_supplicant/wpa_supplicant-wlan0.conf /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
   ```

## Testing

Reboot to verify automatic connection:
```bash
sudo reboot
```

## Troubleshooting

- Check logs: `journalctl -xe | grep -i wpa`
- Verify wireless driver: `lspci -k | grep -A3 Network`

## Other wifis
```bash
reboot
sudo systemctl start NetworkManager
```

```

This Markdown document provides a concise guide for setting up and persisting your IONIS wireless network configuration. Save this as a `.md` file for future reference. Remember to replace "your_password" with your actual password in the configuration files.
