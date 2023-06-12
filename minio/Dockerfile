FROM minio/minio:latest

COPY /minio/policy.json /opt/render/policy.json
COPY /minio/entrypoint.sh /opt/render/entrypoint.sh
RUN chmod +x /opt/render/entrypoint.sh

ENTRYPOINT ["/opt/render/entrypoint.sh"]
