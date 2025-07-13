#!/bin/bash

# Netlify部署脚本
# 使用方法: ./scripts/deploy-netlify.sh

echo "🚀 开始部署到Netlify..."

# 检查是否安装了netlify-cli
if ! command -v netlify &> /dev/null; then
    echo "❌ 未找到netlify-cli，正在安装..."
    npm install -g netlify-cli
fi

# 构建网站
echo "📦 构建网站..."
hugo --minify --gc --cleanDestinationDir

# 检查构建是否成功
if [ $? -eq 0 ]; then
    echo "✅ 网站构建成功"
    
    # 部署到Netlify
    echo "🌐 部署到Netlify..."
    netlify deploy --prod --dir=public
    
    if [ $? -eq 0 ]; then
        echo "🎉 部署成功！"
        echo "🌍 您的网站应该很快就能在 https://menghao.netlify.app/ 看到更新"
    else
        echo "❌ 部署失败，请检查Netlify配置"
    fi
else
    echo "❌ 网站构建失败"
    exit 1
fi 