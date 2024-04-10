FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy source code to container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir pyttsx3 SpeechRecognition

# Expose port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
