# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /data

# Instala las dependencias necesarias para Puppeteer utilizando apk (Alpine Linux)
RUN apk add --no-cache \
    ca-certificates \
    fontconfig \
    libjpeg-turbo \
    libpng \
    nss \
    chromium \
    harfbuzz \
    ttf-freefont

# Instala Puppeteer con npm
RUN npm install puppeteer

# Expón el puerto de n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]
