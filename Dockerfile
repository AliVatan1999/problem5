FROM python:3.11.4-bookworm

WORKDIR /problem5

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
