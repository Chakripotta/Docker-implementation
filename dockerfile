# Use an official python runtime as a parent image
FROM python:3.9-slim

# Sett the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any required packages specified in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environmental variable
ENV FLASK_APP=app.python

# Run the flask app
CMD ["flask","run","--host=0.0.0.0"]