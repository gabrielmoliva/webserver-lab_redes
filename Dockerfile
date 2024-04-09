# Use a imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos necessários para o contêiner
COPY main.py .
COPY templates ./templates

# Instala as dependências do Flask
RUN pip install flask

# Define a porta que será exposta pelo contêiner
EXPOSE 61015

# Define o comando a ser executado quando o contêiner for iniciado
CMD ["python", "main.py"]
