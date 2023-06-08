FROM outlinewiki/outline:latest

ENV APP_PATH /opt/outline
WORKDIR $APP_PATH

RUN yarn build:webpack
ADD run.sh /opt/outline/

CMD /opt/outline/run.sh

EXPOSE 3000
