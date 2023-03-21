FROM node:18

WORKDIR /home/node/app

ENV PORT 4000
EXPOSE 4000

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "4000"]