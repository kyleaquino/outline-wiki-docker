#!/bin/bash

cd $(dirname "$(readlink -f "$0")")

yarn sequelize:migrate
env NODE_ENV=production pm2 start index.js --name outline
