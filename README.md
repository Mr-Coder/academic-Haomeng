# Haomeng's Academic Website

A modern academic website built with [Hugo](https://gohugo.io/) and the [Academic theme](https://sourcethemes.com/academic/). This website showcases research, publications, projects, and professional achievements.

## 🚀 Features

- **Responsive Design**: Works perfectly on all devices
- **Academic Focus**: Specifically designed for researchers and academics
- **Easy Content Management**: Write content in Markdown
- **Multiple Deployment Options**: GitHub Pages, Netlify, Vercel
- **SEO Optimized**: Built-in search engine optimization
- **Dark/Light Mode**: Toggle between themes
- **Fast Loading**: Optimized for performance

## 📋 Prerequisites

- [Hugo](https://gohugo.io/installation/) (Extended version recommended)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for some deployment options)

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/academic-Haomeng.git
   cd academic-Haomeng
   ```

2. **Install Hugo** (if not already installed)
   ```bash
   # macOS
   brew install hugo
   
   # Windows
   choco install hugo-extended
   
   # Linux
   sudo apt-get install hugo
   ```

3. **Run the development server**
   ```bash
   hugo server --buildDrafts --buildFuture
   ```

4. **Open your browser**
   Navigate to `http://localhost:1313`

## 📝 Customization

### Personal Information

1. **Update Profile**: Edit `content/authors/admin/_index.md`
2. **Add Photo**: Place your photo in `content/authors/admin/avatar.jpg`
3. **Contact Info**: Update `config/_default/params.toml`

### Website Configuration

- **Site Title**: `config/_default/config.toml`
- **Theme Settings**: `config/_default/params.toml`
- **Navigation**: `config/_default/menus.toml`

### Content Management

#### Adding Publications
Create files in `content/publication/`:
```markdown
---
title: "Your Paper Title"
authors:
- admin
date: "2024-01-01T00:00:00Z"
publication_types: ["1"]
publication: "Journal Name"
---
```

#### Adding Blog Posts
Create files in `content/post/`:
```markdown
---
title: "Your Blog Post"
authors:
- admin
tags:
- Research
categories:
- Blog
date: "2024-01-01T00:00:00Z"
---
```

#### Adding Projects
Create files in `content/project/`:
```markdown
---
title: "Your Project"
summary: "Project description"
tags:
- Deep Learning
categories:
- Project
date: "2024-01-01T00:00:00Z"
---
```

## 🚀 Deployment

### Option 1: GitHub Pages (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **Enable GitHub Pages**
   - Go to your repository settings
   - Navigate to Pages section
   - Select source branch (gh-pages or main)
   - Your site will be available at `https://yourusername.github.io/academic-Haomeng/`

### Option 2: Netlify

1. **Connect to Netlify**
   - Sign up at [netlify.com](https://netlify.com)
   - Connect your GitHub repository
   - Set build command: `hugo --minify`
   - Set publish directory: `public`

### Option 3: Vercel

1. **Deploy to Vercel**
   ```bash
   npm install -g vercel
   vercel
   ```

### Option 4: Using Deployment Script

Use the provided deployment script:
```bash
# Build the website
./scripts/deploy.sh build

# Test locally
./scripts/deploy.sh test

# Deploy to GitHub Pages
./scripts/deploy.sh github

# Deploy to Netlify
./scripts/deploy.sh netlify

# Deploy to Vercel
./scripts/deploy.sh vercel

# Deploy to all platforms
./scripts/deploy.sh all
```

## 🔧 Advanced Configuration

### Custom CSS
Edit `assets/css/custom.css` to add custom styles.

### Custom JavaScript
Add custom JavaScript files to `assets/js/` and reference them in `config/_default/params.toml`.

### Analytics
Add Google Analytics by setting the tracking ID in `config/_default/params.toml`:
```toml
[marketing]
  google_analytics = "UA-XXXXXXXXX-X"
```

### Search
Enable search functionality by configuring Algolia in `config/_default/params.toml`.

## 📚 Documentation

- [Academic Theme Documentation](https://sourcethemes.com/academic/docs/)
- [Hugo Documentation](https://gohugo.io/documentation/)
- [Markdown Guide](https://www.markdownguide.org/)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## 🙏 Acknowledgments

- [Academic Theme](https://sourcethemes.com/academic/) by George Cushen
- [Hugo](https://gohugo.io/) static site generator
- [Bootstrap](https://getbootstrap.com/) for responsive design

## 📞 Contact

- **Email**: haomeng@example.org
- **Website**: [your-website.com](https://your-website.com)
- **GitHub**: [@yourusername](https://github.com/yourusername)

---

⭐ If you find this template useful, please give it a star on GitHub!
