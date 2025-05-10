# Use official Python image
FROM python:3.10.17-alpine3.21

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy all project files
COPY . .

# Run Django development server
CMD ["python", "todo/manage.py", "runserver", "0.0.0.0:5000", "--noreload"]