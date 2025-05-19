# Descargar la imagen oficial de python
FROM python:3.12

# Crear Directorio de trabajo
WORKDIR /app

# Instalar paquetes

COPY requirements.txt .

# Instalar dependencias
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el directorio del entorno virtual
COPY . .

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]