FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /data

# Instala las dependencias necesarias para Puppeteer en Alpine Linux
RUN apk add --no-cache \
    ca-certificates \
    fontconfig \
    libjpeg-turbo \
    libpng \
    nss \
    chromium \
    harfbuzz \
    ttf-freefont

# Configura la variable de entorno para Puppeteer
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Instala Puppeteer con npm
RUN npm install puppeteer

# Expón el puerto de n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]
