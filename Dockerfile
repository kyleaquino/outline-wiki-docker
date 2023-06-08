FROM outlinewiki/outline:latest
USER root

ENV APP_PATH /opt/outline
ENV NODE_ENV=production

WORKDIR $APP_PATH

COPY run.sh /opt/outline/run.sh
RUN chmod +x /opt/outline/run.sh
ENTRYPOINT ["/opt/outline/run.sh"]

EXPOSE 3000

USER nodejs
