# 使用 Node.js 20.7.0 的基本映像
FROM node:20.7.0-slim

# 在容器中創建應用程序目錄
WORKDIR /app

# 將應用程序代碼複製到容器中
COPY . .

# 安裝應用程序的依賴項
RUN npm i

# 暴露應用程序運行時所使用的端口
EXPOSE 5173

# 開發使用
CMD [ "npm", "run", "dev" ]

# 正式使用
# RUN node run build
# CMD [ "node", "./build/index.js" ]