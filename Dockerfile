# Use Python 3.11 as base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Expose the Flask/FastAPI default port
EXPOSE 5000
ENV FLASK_APP=wsgi.py

# Command to run the app (using wsgi.py as entrypoint)
CMD ["python", "wsgi.py"]
