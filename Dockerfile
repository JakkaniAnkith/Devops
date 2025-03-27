# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy dependency files
COPY app/requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the app code
COPY app/ .

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
