# Usa una imagen oficial de Python basada en Debian que ya incluye el comando ping
FROM python:3.9-buster

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el script Python y cualquier otro archivo necesario al contenedor
COPY . /app

# Establecer las variables de entorno necesarias para el correo electrónico
ENV EMAIL_ADDRESS="pruebascremona@gmail.com"
ENV EMAIL_PASSWORD="dplb esea fqfw aaei"

# Comando para ejecutar el script
CMD ["python", "main.py"]
