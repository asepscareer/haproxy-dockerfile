FROM haproxy:2.8

# Salin konfigurasi HAProxy
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# (Opsional) Salin sertifikat jika pakai SSL/mTLS
COPY certs/ /usr/local/etc/haproxy/certs/

# Port yang dibuka
EXPOSE 80 443

# Jalankan HAProxy di foreground
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]
