# Usa una imagen oficial de Python
FROM python:3.9-slim

# Asegurarse de que los certificados CA están instalados
RUN apt-get update && apt-get install -y ca-certificates iputils-ping

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el script Python y cualquier otro archivo necesario al contenedor
COPY . /app

# Instalar las librerías de Python necesarias
RUN pip install smtplib

# Establecer las variables de entorno necesarias para el correo electrónico
ENV EMAIL_ADDRESS="pruebascremona@gmail.com"
ENV EMAIL_PASSWORD="dplb esea fqfw aaei"

# Comando para ejecutar el script
CMD ["python", "main.py"]
