FROM oven/bun:1

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile --production

COPY index.ts ./
COPY src ./src

ENV NODE_ENV=production

EXPOSE 5000

USER bun

CMD ["bun", "run", "index.ts"]

