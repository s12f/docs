FROM node:14-slim

RUN apt-get update && \
    apt-get install -y wget unzip python build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install embedme

RUN wget -O /tmp/frontend.zip https://github.com/hstreamdb/hstreamdb-docs-frontend/archive/refs/heads/main.zip && \
    unzip /tmp/frontend.zip -d /tmp && \
    mv /tmp/hstreamdb-docs-frontend-main /app && \
    rm -rf /tmp/frontend.zip && \
    cd /app && \
    yarn config set registry https://registry.npm.taobao.org/ && \
    yarn config set registry https://registry.npmjs.org/ && \
    yarn

WORKDIR /app
CMD ["yarn", "dev"]
