# Use an official Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies (if using requirements.txt)
RUN pip install -r requirements.txt

# Expose a port (if running a web app)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
