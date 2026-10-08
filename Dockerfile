# base image of python 
FROM python:3.14-alpine

# code store directory
WORKDIR /app

# copy only requirements
COPY requirements.txt /app

# install depensencies
RUN pip install -r requirements.txt

# copy entire code to containser
COPY . .

# port expose
EXPOSE 80

# run app after container build
CMD ["python","run.py"]
