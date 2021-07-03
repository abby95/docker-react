FROM node:alpine
RUN mkdir /app
WORKDIR /app
COPY ./ ./
RUN npm run build

FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html