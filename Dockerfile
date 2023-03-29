# start by pulling the python image
FROM python:3.10-alpine

ENV FLASK_APP app.py

ENV FLASK_RUN_HOST 0.0.0.0

ENV FLASK_RUN_PORT 7000

# switch working directory
WORKDIR /webapp

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /webapp

EXPOSE 5000

# configure the container to run in an executed manner
CMD [ "python3", "-m", "Flask", "RUN" ]
