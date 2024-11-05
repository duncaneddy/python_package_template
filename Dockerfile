# Use the official Python image from the Docker Hub
FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

# Update PIP
RUN pip install --upgrade pip

# Create a directory for the app
RUN mkdir -p /app/

# Copy the current directory contents into the container
COPY ./.streamlit/ /app/.streamlit/
COPY ./mypkg/ /app/mypkg/
#COPY ./data/ /app/data/ # Uncomment this if you have data files you want to copy into the container
COPY pyproject.toml /app/

# Set the working directory in the container
WORKDIR /app

# Install any dependencies
RUN pip install --no-cache-dir .

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Enture the Streamlit app is healthy
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

# Run Streamlit when the container launches
ENTRYPOINT ["streamlit", "run", "mypkg/app.py", "--server.port=8501", "--server.address=0.0.0.0"]