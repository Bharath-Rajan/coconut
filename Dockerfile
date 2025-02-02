# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /coconut

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (if needed)
EXPOSE 8000

# Command to run the application
CMD ["python", "run.py"]
