FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y \
    python3.8 \
    python3.8-dev \
    python3-pip

# RUN pip3 install jupyter

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r /app/requirements.txt

WORKDIR /app

EXPOSE 8888

COPY src/notebook.ipynb /app/notebook.ipynb
COPY src/trips_data.csv /app/trips_data.csv

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]
