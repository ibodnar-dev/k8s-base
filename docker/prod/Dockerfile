# Use an official Python runtime as a parent image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app
COPY ./requirements/prod.txt requirements-prod.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements-prod.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Command to run the FastAPI application using Uvicorn
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "80"]
