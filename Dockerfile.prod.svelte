FROM node:18 as build

COPY . .
RUN npm ci
RUN npm run build

FROM node:18

COPY --from=build /build /build
COPY package.json .

ENV PORT 30002
EXPOSE 30002

CMD ["node", "build"]