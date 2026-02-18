# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (Since there is no requirements.txt, we just install pytest directly for testing if needed)
RUN pip install --no-cache-dir pytest

# Run calculator.py when the container launches (or open a shell)
# Since calculator.py is a library, detailed command depends on usage.
# Keeping it simple to run python.
CMD ["python"]
