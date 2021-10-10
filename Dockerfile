# https://snyk.io/blog/10-best-practices-to-containerize-nodejs-web-applications-with-docker/
FROM node:lts-alpine@sha256:8c94a0291133e16b92be5c667e0bc35930940dfa7be544fb142e25f8e4510a45 AS deps
WORKDIR /app
COPY package*.json /app/
RUN npm install

FROM deps as build
WORKDIR /app
COPY . /app/
RUN npm run build

FROM mhart/alpine-node:12@sha256:554727decbab367c7436b33da9635c039d64fb1940e48e88346bc0c3195bdc2f AS release
RUN apk add dumb-init
ENV NODE_ENV production
WORKDIR /app
COPY --from=deps /app/package*.json /app/
RUN npm ci --only=production && npm cache clean --force
COPY --from=build ./app/dist /app/
EXPOSE 4000
CMD ["dumb-init", "node", "main"]