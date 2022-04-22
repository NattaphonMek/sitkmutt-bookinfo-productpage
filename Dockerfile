FROM python:3.8-bullseye

WORKDIR /app
COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8083

CMD ["python","/app/productpage.py","8083"]