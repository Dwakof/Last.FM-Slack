FROM frolvlad/alpine-python3

ENV APP_DIR /app
ENV DATA_DIR /data

ADD . $APP_DIR

WORKDIR ${APP_DIR}

# basic flask environment
RUN apk add --no-cache bash && \
	pip3 install --upgrade pip && \
	pip3 install -r requirements.txt && \
	mkdir $DATA_DIR

VOLUME [${DATA_DIR}]

CMD ["python3", "app.py"]
	
	
