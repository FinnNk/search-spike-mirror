FROM python:3.13.7-alpine3.22
WORKDIR /app
COPY requirements.lock ./
RUN pip install --no-cache-dir -r requirements.lock
COPY app.py rewrite_lookup.py index.html test_app.py test_rewrite_lookup.py ./
RUN python -m unittest -v
USER 1000
EXPOSE 8080
CMD ["python", "app.py"]
