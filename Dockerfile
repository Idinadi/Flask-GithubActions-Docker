FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt
CMD ["gunicorn", "-w", "4", "server:app"]

 
