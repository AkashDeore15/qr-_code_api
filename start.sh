#!/bin/bash

# Ensure the qr_codes directory exists and has correct permissions
mkdir -p /app/qr_codes
chmod 777 /app/qr_codes

# Start the FastAPI application
exec uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
