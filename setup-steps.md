# Samba Server Setup Steps

## 1. Install Samba
```bash
sudo apt install samba
2. Create Shared Folder
bash
sudo mkdir -p /srv/samba/secure
sudo chown root:sambashare /srv/samba/secure
sudo chmod 2770 /srv/samba/secure
3. Add Users and Set Passwords
See the users-setup.sh script.

4. Edit Configuration
Paste the [SecureShare] block into /etc/samba/smb.conf

5. Restart Samba
bash
sudo systemctl restart smbd
6. Access from Windows:
php-template
\\<Ubuntu-IP>\SecureShare
