# Usa la imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al directorio de trabajo
COPY . .

# Instala las dependencias de tu proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecuta tu aplicación
EXPOSE 8000

# Ejecuta tu aplicación cuando se inicie el contenedor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
