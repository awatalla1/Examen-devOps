FROM python:3.9-slim
WORKDIR /app
COPY app/server.py .
EXPOSE 8000
CMD ["python", "server.py"]