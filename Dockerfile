#pull base image
FROM python:3.14-slim
#install streamlit
RUN pip install streamlit
#set working directory
WORKDIR /var
#copy file
COPY etl1.py .
#expose streamlit
EXPOSE 8501
#run streamlit app 
CMD ["streamliit", "run", "etl1.py"]