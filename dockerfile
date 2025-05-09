# Përdor imazhin zyrtar të Node.js si bazë
FROM node:18

# Vendos direktorinë e punës brenda kontejnerit
WORKDIR /usr/src/app

# Kopjo skedarët
COPY package*.json ./
COPY app.js ./

# Instalo varësitë
RUN npm install

# Trego portin që do të përdorë aplikacioni
EXPOSE 3000

# Komanda për të startuar aplikacionin
CMD ["npm", "start"]
