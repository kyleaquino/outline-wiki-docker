FROM minio/minio:latest

COPY /minio/policy.json /opt/render/policy.json
COPY /minio/entrypoint.sh /opt/render/entrypoint.sh
COPY /minio/init-bucket.sh /opt/render/init-bucket.sh

RUN chmod +x /opt/render/entrypoint.sh
RUN chmod +x /opt/render/init-bucket.sh

ENTRYPOINT ["/opt/render/entrypoint.sh"]

CMD ["/opt/render/init-bucket.sh"]