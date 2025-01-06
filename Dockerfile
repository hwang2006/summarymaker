# Use the official Python base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Install the summarymaker package
RUN pip install .

# Expose the port that Gradio app will run on
EXPOSE 7860

# Entry Point 
ENTRYPOINT [ "python" ]

# Define the entry point for the container
CMD ["src/summarizer/webapp/gradio_app.py"]