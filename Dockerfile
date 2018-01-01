FROM alpine

ENV APP_DIR /app
ENV DATA_DIR /data

ADD . $APP_DIR

WORKDIR ${APP_DIR}

# basic flask environment
RUN apk add --no-cache bash py2-pip && \
	pip2 install --upgrade pip && \
	pip2 install -r requirements.txt && \
	mkdir $DATA_DIR

VOLUME [${DATA_DIR}]

CMD ["python2", "app.py"]
	
	
