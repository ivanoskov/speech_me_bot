FROM python:3.9

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Установим директорию для работы

WORKDIR /speech_me_bot

COPY ./requirements.txt ./

# Устанавливаем зависимости и gunicorn
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r ./requirements.txt

# Копируем файлы и билд
COPY ./ ./

RUN chmod -R 777 ./