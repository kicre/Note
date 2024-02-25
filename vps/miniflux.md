```yml
# docker-compose.yml
version: '3.4'
services:
  miniflux:
    image: miniflux/miniflux:latest
    container_name: miniflux
    restart: always
    ports:
      - "8080:8080"
    depends_on:
      - db
    environment:
      - POLLING_FREQUENCY=15
      - DATABASE_URL=postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@db/$miniflux?sslmode=disable
      - BASE_URL=${MINIFLUX_BASE_URL}
      - RUN_MIGRATIONS=1
      - CREATE_ADMIN=1
      - ADMIN_USERNAME=${MINIFLUX_USERNAME}
      - ADMIN_PASSWORD=${MINIFLUX_PASSWORD}
      - POLLING_PARSING_ERROR_LIMIT=0 //拉取出错后不会停止拉去，还是会按计划继续拉
      - BATCH_SIZE=100  //每次拉取的 feed 数量
      - POLLING_SCHEDULER=entry_frequency //拉取类型，根据上周的平均更新周期来拉取
      - PROXY_OPTION=all //图片代理功能，Miniflux 先把源端的图片缓存到服务器上来，后续就不用客户端去源服务器拉了
      - PROXY_PRIVATE_KEY=password // 使用客户端缓存过文章，然后某个时间重启了 docker 实例，那么会导致图片无法显示的情况，这是因为每次重启会随机生成 PROXY_PRIVATE_KEY,所以可以增加参数 PROXY_PRIVATE_KEY 固化 key ，便于解决更新、重启等场景下的图片显示问题。
      - DATABASE_MAX_CONNS=50 //增加数据库连接数，对于多图片的 feed 非常有效，可以大幅提升加载和访问速度
      - DATABASE_MIN_CONNS=5  // 同上
      - WORKER_POOL_SIZE=10  //默认，或适当加大
    healthcheck:
      test: ["CMD", "/usr/bin/miniflux", "-healthcheck", "auto"]
  db:
    image: postgres:latest
    container_name: postgres
    restart: always
    environment:
      - POSTGRES_USER=${POSTGRES_USER}
      - POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
    volumes:
      - miniflux-db:/var/lib/postgresql/data
    healthcheck:
      test: ["CMD", "pg_isready", "-U", "miniflux"]
      interval: 10s
      start_period: 30s
volumes:
  miniflux-db:


# Esc + :wq 退出 vim 并保存

```