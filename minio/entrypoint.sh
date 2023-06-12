#!/usr/bin/env sh
# wrapper for docker entrypoint that takes into account the PORT env var

# Create a bucket and set access policy
export MINIO_BUCKET=minio-bucket
export MINIO_POLICY_FILE=/tmp/policy.json
cp /opt/render/policy.json $MINIO_POLICY_FILE

# Initialize the MinIO server and create the bucket
mc config host add myminio http://127.0.0.1:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD
mc mb myminio/$MINIO_BUCKET
mc policy set myminio/$MINIO_BUCKET $MINIO_POLICY_FILE

exec docker-entrypoint.sh server --console-address ":10000" --address ":9000" /data