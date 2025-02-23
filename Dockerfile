
FROM node:20
WORKDIR /app
RUN npm install -g pnpm@latest-10
COPY . /app
RUN pnpm install
RUN pnpm build
EXPOSE 3000
CMD ["pnpm", "start"]
