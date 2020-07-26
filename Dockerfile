FROM python:3.6

RUN useradd -m noobmaster

ADD . /home/noobmaster

WORKDIR /home/noobmaster

RUN pip install --trusted-host pypi.python.org -r requirements.txt && chown noobmaster.noobmaster /home/noobmaster -R

USER noobmaster

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "-m", "models/nlu_model.gz"]