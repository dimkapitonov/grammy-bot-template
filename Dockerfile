FROM node:23-alpine

WORKDIR /app

RUN corepack enable

COPY . .

RUN pnpm install --frozen-lockfile

RUN pnpm build

CMD ["node", "dist/main.js"]
