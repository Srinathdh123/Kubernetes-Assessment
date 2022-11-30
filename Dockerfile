FROM nginx:latest
ARG source=SRINATH
ENV SOURCE $SOURCE
RUN mkdir test
COPY index.html /test/
RUN sed -i -e '/s/INCREMENT/${SOURCE}/g' /test/index.html


COPY test/index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
