FROM anielsen/quarto-15-texlive-python-julia:latest

RUN mkdir -p /opt
WORKDIR /opt
COPY requirements.txt /opt/requirements.txt
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt
