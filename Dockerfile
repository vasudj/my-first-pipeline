# 1. Start with a lightweight Linux server that already has Python installed
FROM python:3.10-slim

# 2. Create a folder inside the container called /app
WORKDIR /app

# 3. Copy our Python files from GitHub into that /app folder
COPY app.py test_app.py ./

# 4. Tell the container what to do when it turns on
CMD ["python", "-m", "unittest", "test_app.py"]
