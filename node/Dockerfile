FROM --platform=$BUILDPLATFORM python:3.9-buster AS builder

WORKDIR /

COPY requirements.txt /

RUN <<EOF
    pip install --upgrade pip
    pip install -r requirements.txt
EOF

COPY . .

CMD [ "python3", "manage.py",  "runserver", "--host", "0.0.0.0" ]

FROM builder AS prod-envs

RUN <<EOF
    apt update
    apt install -y build-essential libffi-dev
EOF

ENV PYTHONUNBUFFERED 1
ENV LD_LIBRARY_PATH "/src/utils/did"

EXPOSE 5000

CMD [ "python3", "manage.py",  "runserver", "--host", "0.0.0.0" ]
