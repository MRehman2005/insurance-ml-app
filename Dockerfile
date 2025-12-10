#use python 3.11 baseimage
FROM python:3.11-slim

#select work directory
WORKDIR /app

#copy requriements and install dependincies
COPY requriements.txt .
RUN pip install --no-cache-dir -r requriements.txt

#copy rest of the appplication code
COPY . .

# export the application port
EXPOSE 8000

#command to start fastapi application
CMD [ "uvicorn","app:app","--host","0.0.0.0","--port","8000" ]
