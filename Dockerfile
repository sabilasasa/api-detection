# Gunakan image Node.js resmi
FROM node:20

# Tetapkan direktori kerja
WORKDIR /usr/src/app

# Salin file package
COPY package*.json ./

# Instal dependensi
RUN npm install

# Salin seluruh kode proyek
COPY . .

ENV MODEL_URL=https://storage.googleapis.com/storage-ml-model/model.json

# Expose port
EXPOSE 8080

# Perintah menjalankan aplikasi
CMD ["npm", "start"]