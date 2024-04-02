#!/bin/bash 

mlflow db upgrade $POSTGRESQL_URL
mlflow server \
  --host 0.0.0.0 \
  --port 3131 \
  --backend-store-uri $POSTGRESQL_URL \
  --artifacts-destination $STORAGE_URL
