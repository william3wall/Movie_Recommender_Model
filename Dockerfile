FROM python:3.8-buster

COPY api api
COPY Movie_Recommender_Model Movie_Recommender_Model
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0  --port $PORT
