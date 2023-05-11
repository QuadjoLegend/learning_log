# use ab official Python runtime as a parent image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory to /app
WORKDIR /learning_log

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 8000 for the Django development server
EXPOSE 8000

# Run Django's built-in development server
CMD [ "python3", "manage.py", "runserver", "127.0.0.1:8000"]
