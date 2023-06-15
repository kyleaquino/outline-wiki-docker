#!/usr/bin/env sh

# Install MinIO Command Line Tools
curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  --create-dirs \
  -o /opt/minio-binaries/mc

chmod +x /opt/render/minio-binaries/mc
export PATH=$PATH:/opt/minio-binaries/

# Create a bucket and set access policy
export MINIO_BUCKET=minio-bucket
export MINIO_POLICY_FILE=/tmp/policy.json
cp /opt/render/policy.json $MINIO_POLICY_FILE

# Initialize the MinIO server and create the bucket
mc alias set local http://localhost:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD
mc mb local/$MINIO_BUCKET
mc policy set local/$MINIO_BUCKET $MINIO_POLICY_FILE

minio