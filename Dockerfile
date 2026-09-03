# syntax=docker/dockerfile:1

FROM python:3.14.7-slim-trixie

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /congress_transparency_class26

EXPOSE 8050

CMD ["python", "skeleton/app.py"]

