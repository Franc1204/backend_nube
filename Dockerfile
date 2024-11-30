# Imagen de python
FROM python:3.9-slim

# Directorio de trabajo
WORKDIR /app

# Archivos necesarios
COPY requirements.txt requirements.txt
COPY . .

# Dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Establecer puerto de la aplicacion
EXPOSE 5000

# Ejecucion de la aplicacion
CMD ["python", "app.py"]

