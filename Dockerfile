# Indica o basico que o container tem que ter
FROM python:3.10-slim           

# Aponta onde é o local raiz do docker 
WORKDIR /app 

# Copia o conteudo do diretorio /app para a raiz /app criada no container                   
COPY ./app .  

# Copia o arquivo requirements.txt no diretorio /app                  
COPY requirements.txt . 

# Instala as bibliotecas presentes no arquivo requirements (no caso o flask)
RUN pip install -r requirements.txt

# Apenas documenta qual vai ser a porta que a aplicacao vai usar
EXPOSE 5000      

# Gera o comando para iniciar a aplicacao em pyhton
CMD ["python", "app.py"]        