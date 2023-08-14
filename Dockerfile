# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Install Rasa
RUN pip install rasa

# Expose the port that the Rasa server will run on
EXPOSE 5005

# Start the Rasa server when the container starts
CMD ["rasa", "run", "-p", "5005", "--credentials", "config/credentials.yml"]
