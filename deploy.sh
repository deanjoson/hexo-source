#!/bin/bash
# # 网站的代码仓库目录
# gitrepo="/root/hexo-source"
# # Nginx 中配置的网站的 HTML 根目录
output="/root/nginx/nginx/dist/hexo"
# cd $gitrepo
# 需提前在input目录clone仓库并配置免密
git pull
npm install hexo --save
hexo clean
hexo generate
echo '删除仓库目录'
rm -rfv $output/*
echo '拷贝新的博客文件'
cp -rfv ./public/* $output
echo "博客部署完成: $(date +'%Y-%m-%d %T')"

pm2 delete hexo
pm2 start hexo.js