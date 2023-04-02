FROM node:16-alpine

MAINTAINER niliovo 1791356563@qq.com

WORKDIR /pandora-ai

COPY . .

RUN chmod a+x ./pandora-ai_build.sh && ./pandora-ai_build.sh

RUN npm install

EXPOSE 3000 24678

HEALTHCHECK --interval=30s --timeout=10s \
  CMD [ "/bin/sh", "health_check.sh" ]

ENTRYPOINT ["/bin/sh", "pandora-ai_startup.sh"]