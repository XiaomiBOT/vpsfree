# Gunakan image dasar yang mendukung systemd, misalnya, Ubuntu 
FROM ubuntu:20.04 

# Instal paket-paket yang diperlukan 
JALANKAN apt-get update && \ 
apt-get install -y shellinabox && \ 
apt-get install -y systemd && \ 
apt-get clean && \ 
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
JALANKAN echo 'root:root' | chpasswd 
# Paparkan port terminal berbasis web 
EXPOSE 4200 

# Jalankan shellinabox 
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
