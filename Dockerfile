FROM python:3.8.12-slim-buster
EXPOSE 5000
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
WORKDIR /app
COPY . /app
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]