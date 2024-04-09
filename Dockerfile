# Use a imagem base do Python
FROM  nginx:1.24.0-alpine-slim

# Copia os arquivos necessários para o contêiner
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html

# Define a porta que será exposta pelo contêiner
EXPOSE 61015

# Define o comando a ser executado quando o contêiner for iniciado
CMD ["python3", "main.py"]
