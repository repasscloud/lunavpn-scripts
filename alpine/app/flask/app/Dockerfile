FROM python:3-slim
WORKDIR /app
#COPY . /app
RUN pip install --trusted-host pypi.python.org Flask
EXPOSE 5000
ENV NAME World
CMD ["python", "app.py"]