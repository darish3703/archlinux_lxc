# Bazarr Arch Linux installation (run as non-root user inside the LXC)

### 1. Run the script inside of the Arch Linux LXC.

  ```
  bash <(curl -s https://raw.githubusercontent.com/TheHellSite/archlinux_lxc/main/bazarr/bazarr_installer.sh)
  ```

***Note:  
Since the Bazarr web interface doesn't (yet?) support HTTPS out of the box my script will install Stunnel alongside Bazarr to circumvent this.  
Stunnel acts as a middleman between client devices and the Bazarr web interface. It is listening on https://0.0.0.0:6767 accepting only encrypted HTTPS traffic, decrypts it and then forwards it to Bazarr listening on http://127.0.0.1:7676. This way any unencrypted communication is only happening on the localhost (inside of the LXC) and any communication between client devices and Bazarr (outside of the LXC) is secured using a self-signed SSL certificate configured in Stunnel.***

<br />
<br />
<br />
<br />
<hr>

# Bazarr Arch Linux update installation (run as non-root user inside the LXC)

### 1. Perform a full system upgrade and reboot the LXC.

  ```
  sudo pacman -Syy --noconfirm archlinux-keyring && sudo pacman -Su && sudo reboot
  ```

### 2. Run the script inside of the Arch Linux LXC.

  ```
  bash <(curl -s https://raw.githubusercontent.com/TheHellSite/archlinux_lxc/main/bazarr/bazarr_updater.sh)
  ```
