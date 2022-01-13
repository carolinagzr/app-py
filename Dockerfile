ARG REPO=687995572327.dkr.ecr.us-west-2.amazonaws.com
FROM ${REPO}/python:3.7

# Force the binary layer of the stdout and stderr streams
# to be unbuffered
ENV PYTHONUNBUFFERED 1

# Create a /data directory
WORKDIR /data
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into /app
ADD . /app
# Make port 8080 available to the world
EXPOSE 8080

# Install requirements
# and change file ownership
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]
