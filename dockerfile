FROM python:3.9.13

WORKDIR /backend_mqtt

COPY ./ ./

EXPOSE 8000

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get -y install libgl1-mesa-glx

CMD [ "python", "app.py" ]