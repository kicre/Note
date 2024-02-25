```yml
version: "3"
services:
  watchtower:
    image: containrrr/watchtower
    container_name: watchtower
    restart: unless-stopped
    environment: 
      TZ: Asia/Shanghai
      WATCHTOWER_NOTIFICATION_TITLE_TAG: Oracle01 # 邮件抬头
      WATCHTOWER_MONITOR_ONLY: 'false'
      WATCHTOWER_NOTIFICATIONS: email
      WATCHTOWER_NOTIFICATION_EMAIL_FROM: hwb2012@qq.com # 发送邮件
      WATCHTOWER_NOTIFICATION_EMAIL_TO: huangwb886@gmail.com # 接收邮件
      # SMTP帐号信息
      WATCHTOWER_NOTIFICATION_EMAIL_SERVER: smtp.qq.com
      WATCHTOWER_NOTIFICATION_EMAIL_SERVER_PORT: 465
      WATCHTOWER_NOTIFICATION_EMAIL_SERVER_USER: hwb2012@qq.com
      WATCHTOWER_NOTIFICATION_EMAIL_SERVER_PASSWORD: xxxxxxxx # 按需改密码
      WATCHTOWER_NOTIFICATION_EMAIL_DELAY: 2
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    command: bitwarden-app-1 --cleanup --schedule "0 0 6 * * *"
    # 在command中可以添加多个容器名
    # command: rsshub watchtower go-chatgpt-api chatgpt-proxy-server-warp duplicat portainer privatebin bitwarden wallabag ttrss alist --cleanup --interval 3600
    # --schedule "0 0 4 * * *"
```
