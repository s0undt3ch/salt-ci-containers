FROM python:3.6

RUN env USE_STATIC_REQUIREMENTS=1 python -m pip install salt~=3004.0
