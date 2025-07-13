# 网站部署指南

## 🚀 自动部署（推荐）

### GitHub Actions自动部署
当您推送代码到GitHub时，会自动触发部署：

```bash
git add .
git commit -m "更新网站内容"
git push origin master
```

### 检查部署状态
1. 访问 [GitHub Actions](https://github.com/Mr-Coder/academic-Haomeng/actions) 查看部署状态
2. 访问 [Netlify Dashboard](https://app.netlify.com/) 查看部署日志

## 🔧 手动部署

### 方法1：使用Netlify CLI
```bash
# 安装Netlify CLI
npm install -g netlify-cli

# 登录Netlify
netlify login

# 构建网站
hugo --minify --gc --cleanDestinationDir

# 部署到Netlify
netlify deploy --prod --dir=public
```

### 方法2：使用提供的脚本
```bash
# 运行部署脚本
./scripts/deploy-netlify.sh
```

## 🌐 网站地址

- **生产环境**: https://menghao.netlify.app/
- **GitHub仓库**: https://github.com/Mr-Coder/academic-Haomeng

## ⚙️ Netlify配置

### 环境变量设置
在Netlify Dashboard中设置以下环境变量：

```
HUGO_VERSION = 0.148.1
HUGO_ENV = production
```

### 构建设置
- **构建命令**: `hugo --gc --minify -b $URL`
- **发布目录**: `public`
- **Node.js版本**: 18.x 或更高

## 🔍 故障排除

### 网站没有更新
1. 检查GitHub Actions是否成功运行
2. 检查Netlify部署日志
3. 清除浏览器缓存
4. 等待几分钟让CDN更新

### 构建失败
1. 检查Hugo版本兼容性
2. 检查配置文件语法
3. 查看构建日志中的错误信息

### 样式问题
1. 检查CSS文件是否正确加载
2. 检查主题配置
3. 清除浏览器缓存

## 📞 获取帮助

如果遇到部署问题，可以：

1. 检查 [Netlify文档](https://docs.netlify.com/)
2. 查看 [Hugo文档](https://gohugo.io/documentation/)
3. 在GitHub Issues中报告问题

## 🎯 最新更新

- ✅ 更新了个人信息和学术背景
- ✅ 添加了详细的出版物页面
- ✅ 创建了研究项目页面
- ✅ 更新了技能和经验部分
- ✅ 修复了Google Analytics配置问题 