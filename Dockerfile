FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["gunicorn", "-w", "4", "server:app"]

 
