# Menggunakan image Nginx sebagai base image
FROM nginx:alpine

# Menghapus konfigurasi default Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Menyalin file konfigurasi Nginx
COPY nginx.conf /etc/nginx/conf.d

# Menyalin file index.html ke direktori yang dilayani oleh Nginx
COPY Kalkulator.html /usr/share/nginx/html/

# Mengekspos port 80
EXPOSE 80

# Menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]