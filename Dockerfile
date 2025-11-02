# Pull official Python base image
FROM python:3.11-slim

# Upgrade pip and essential tools
RUN pip install --upgrade pip setuptools wheel

# Install streamlit
RUN pip install streamlit

# Set working directory
WORKDIR /var

# Copy your application file
COPY etl1.py .

# Expose Streamlit port
EXPOSE 8501

# Run Streamlit app
CMD ["streamlit", "run", "etl1.py"]
