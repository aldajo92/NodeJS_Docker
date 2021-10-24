FROM node:17.0.1-alpine3.12

# COPY ./app /app

EXPOSE 3000

RUN npm install -g nodemon

COPY ./autostart.sh /
RUN chmod +x /autostart.sh
CMD ["sh", "autostart.sh"]