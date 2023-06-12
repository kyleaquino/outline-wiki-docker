FROM minio/minio:latest


RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  --create-dirs \
  -o /opt/render/minio-binaries/mc

RUN chmod +x /opt/render/minio-binaries/mc
RUN export PATH=$PATH:/opt/render/minio-binaries/


COPY /minio/policy.json /opt/render/policy.json
COPY /minio/entrypoint.sh /opt/render/entrypoint.sh
RUN chmod +x /opt/render/entrypoint.sh

ENTRYPOINT ["/opt/render/entrypoint.sh"]
