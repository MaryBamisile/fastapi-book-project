# Use an official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app


# Copy project files
#COPY . .

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#COPY project files
COPY . .

# Expose FastAPI default port
EXPOSE 8000

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
