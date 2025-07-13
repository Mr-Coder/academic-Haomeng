# 孟皓的学术主页

基于 [Hugo](https://gohugo.io/) 和 [Academic主题](https://sourcethemes.com/academic/) 构建的现代化学术网站。本网站展示了我在智慧教育、知识图谱和计算智能系统领域的研究成果、学术论文和项目经历。

## 🎓 关于我

我是华中师范大学-伍伦贡大学计算机学院的博士研究生，专业方向为计算机应用。我的研究领域主要集中在：

- **智慧教育 (Smart Education)**
- **智慧科研 (Smart Research)**  
- **知识图谱 (Knowledge Graphs)**
- **教育技术 (Educational Technology)**
- **计算智能系统 (Computational Intelligence Systems)**

## 🏫 教育背景

- **博士学位 (在读)**：华中师范大学-伍伦贡大学 计算机双博士学位 (2019-至今)
  - 导师：沈俊教授、余新国教授
- **硕士学位**：华中师范大学-伍伦贡大学 (2017-2019)
  - 导师：余新国教授
- **学士学位**：太原理工大学 (2013-2017)
- **交换学生**：国立高雄师范大学 (2015年7月-12月)

## 📊 学术成就

### 论文发表
- 已发表英文论文 **20余篇**
- 主要发表在 IEEE TLT、KBS、IJCIS、JECR 等期刊

### 科研项目
- 参与国家自然科学基金项目 **5项**
- 主持优秀博士生毕业论文培育项目 **1项**
- 入选国家公派创新性人才联合培养博士研究生项目

### 学术服务
- **6个国际期刊审稿人**：KBS, IEEE TLT, IJCIS, JECR, Complex & Intelligent Systems
- **8个国际会议审稿人**：ICPR 2024, TALE 2021, IEIR 2022/2023, IJCKG 2023, AAAI 2024, SAC 2024, ICSOC 2024
- **IEEE Member**

## 🚀 网站特性

- **响应式设计**：完美适配所有设备
- **学术专注**：专为研究人员和学者设计
- **内容管理**：使用Markdown格式编写
- **多平台部署**：支持GitHub Pages、Netlify、Vercel
- **SEO优化**：内置搜索引擎优化
- **主题切换**：支持明暗模式切换
- **快速加载**：性能优化

## 📋 技术栈

- **静态站点生成器**：Hugo (Extended)
- **主题**：Academic Theme
- **样式**：自定义CSS + Bootstrap
- **部署**：GitHub Actions自动化部署
- **版本控制**：Git

## 🛠️ 本地开发

### 环境要求
- [Hugo](https://gohugo.io/installation/) (Extended版本)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (可选，用于某些部署选项)

### 安装步骤

1. **克隆仓库**
   ```bash
   git clone https://github.com/Mr-Coder/academic-Haomeng.git
   cd academic-Haomeng
   ```

2. **安装Hugo** (如果尚未安装)
   ```bash
   # macOS
   brew install hugo
   
   # Windows
   choco install hugo-extended
   
   # Linux
   sudo apt-get install hugo
   ```

3. **启动开发服务器**
   ```bash
   hugo server --buildDrafts --buildFuture
   ```

4. **打开浏览器**
   访问 `http://localhost:1313`

## 📝 内容管理

### 更新个人信息
1. **个人资料**：编辑 `content/authors/admin/_index.md`
2. **头像照片**：将照片放置在 `content/authors/admin/avatar.jpg`
3. **联系信息**：修改 `config/_default/params.toml`

### 添加内容

#### 发表论文
在 `content/publication/` 目录下创建新文件：
```markdown
---
title: "论文标题"
authors:
- admin
date: "2024-01-01T00:00:00Z"
publication_types: ["1"]
publication: "期刊名称"
---
```

#### 博客文章
在 `content/post/` 目录下创建新文件：
```markdown
---
title: "文章标题"
authors:
- admin
tags:
- 研究
- 人工智能
categories:
- 博客
date: "2024-01-01T00:00:00Z"
---
```

#### 研究项目
在 `content/project/` 目录下创建新文件：
```markdown
---
title: "项目名称"
summary: "项目描述"
tags:
- 深度学习
- 计算机视觉
categories:
- 项目
date: "2024-01-01T00:00:00Z"
---
```

## 🚀 部署选项

### 选项1：GitHub Pages (推荐)

1. **推送到GitHub**
   ```bash
   git add .
   git commit -m "更新网站内容"
   git push origin master
   ```

2. **启用GitHub Pages**
   - 进入仓库设置
   - 找到Pages部分
   - 选择源分支 (gh-pages 或 master)
   - 网站将在 `https://yourusername.github.io/academic-Haomeng/` 可用

### 选项2：使用部署脚本

使用提供的部署脚本：
```bash
# 构建网站
./scripts/deploy.sh build

# 本地测试
./scripts/deploy.sh test

# 部署到GitHub Pages
./scripts/deploy.sh github

# 部署到所有平台
./scripts/deploy.sh all
```

## 🔧 高级配置

### 自定义样式
编辑 `assets/css/custom.css` 添加自定义样式。

### 分析工具
在 `config/_default/params.toml` 中设置Google Analytics：
```toml
[marketing]
  google_analytics = "UA-XXXXXXXXX-X"
```

### 搜索功能
配置Algolia搜索在 `config/_default/params.toml` 中。

## 📚 文档资源

- [Academic主题文档](https://sourcethemes.com/academic/docs/)
- [Hugo文档](https://gohugo.io/documentation/)
- [Markdown指南](https://www.markdownguide.org/)

## 🤝 贡献

1. Fork本仓库
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 开启Pull Request

## 📄 许可证

本项目基于MIT许可证 - 查看 [LICENSE.md](LICENSE.md) 文件了解详情。

## 🙏 致谢

- [Academic主题](https://sourcethemes.com/academic/) by George Cushen
- [Hugo](https://gohugo.io/) 静态网站生成器
- [Bootstrap](https://getbootstrap.com/) 响应式设计框架

## 📞 联系方式

- **邮箱**：menghao@example.edu
- **机构**：华中师范大学计算机学院
- **地址**：湖北省武汉市华中师范大学
- **GitHub**：[@Mr-Coder](https://github.com/Mr-Coder)

---

⭐ 如果这个项目对您有帮助，请给它一个星标！
# Updated Sun Jul 13 22:44:41 AEST 2025
