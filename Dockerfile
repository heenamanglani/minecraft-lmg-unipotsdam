FROM nvidia/cuda:9.2-cudnn7-runtime-ubuntu18.04
WORKDIR /app
COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y python3 python3-pip && pip3 install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT [ "python3" ]
EXPOSE 5000
CMD [ "python", "-m" , "--host=0.0.0.0", "--port=5000"]
