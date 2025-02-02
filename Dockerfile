# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /data

# Instala las dependencias necesarias para Puppeteer
RUN apt-get update && apt-get install -y \
    ca-certificates \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libgdk-pixbuf2.0-0 \
    libnspr4 \
    libnss3 \
    libxcomposite1 \
    libxrandr2 \
    libxss1 \
    xdg-utils \
    wget \
    --no-install-recommends && apt-get clean

# Instala Puppeteer
RUN npm install puppeteer

# Expón el puerto de n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n"]
