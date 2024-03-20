FROM python:3.12-bookworm
WORKDIR /app
COPY ["requirements.txt",""]
RUN ["python","-m","pip","install","-r","requirements.txt"]
COPY ["synology.py",""]
CMD ["python","synology.py"]
