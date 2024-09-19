# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install the dependencies
RUN pip install streamlit

# Copy the rest of the application code into the container
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the Streamlit app on port 8080
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
