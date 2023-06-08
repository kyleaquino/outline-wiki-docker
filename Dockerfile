FROM outlinewiki/outline:latest
USER root

ENV APP_PATH /opt/outline
ENV NODE_ENV=production

WORKDIR $APP_PATH

ADD run.sh /opt/outline/
CMD /opt/outline/run.sh
RUN chmod +x /opt/outline/run.sh

EXPOSE 3000

USER nodejs
