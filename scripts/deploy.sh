#!/bin/bash

# Academic Website Deployment Script
# This script helps deploy your academic website to various platforms

set -e  # Exit on any error

echo "🚀 Academic Website Deployment Script"
echo "====================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if Hugo is installed
check_hugo() {
    if ! command -v hugo &> /dev/null; then
        print_error "Hugo is not installed. Please install Hugo first."
        echo "Installation guide: https://gohugo.io/installation/"
        exit 1
    fi
    print_success "Hugo is installed: $(hugo version)"
}

# Build the website
build_site() {
    print_status "Building the website..."
    
    # Clean previous build
    if [ -d "public" ]; then
        rm -rf public
        print_status "Cleaned previous build"
    fi
    
    # Build the site
    hugo --minify --gc --cleanDestinationDir
    
    if [ $? -eq 0 ]; then
        print_success "Website built successfully!"
        print_status "Build size: $(du -sh public | cut -f1)"
    else
        print_error "Build failed!"
        exit 1
    fi
}

# Test the website locally
test_site() {
    print_status "Testing website locally..."
    
    # Start Hugo server in background
    hugo server --buildDrafts --buildFuture --port 1313 &
    HUGO_PID=$!
    
    # Wait for server to start
    sleep 3
    
    # Check if server is running
    if curl -s http://localhost:1313 > /dev/null; then
        print_success "Website is running at http://localhost:1313"
        print_status "Press Ctrl+C to stop the server"
        
        # Wait for user to stop
        wait $HUGO_PID
    else
        print_error "Failed to start local server"
        kill $HUGO_PID 2>/dev/null || true
        exit 1
    fi
}

# Deploy to GitHub Pages
deploy_github_pages() {
    print_status "Deploying to GitHub Pages..."
    
    # Check if git is initialized
    if [ ! -d ".git" ]; then
        print_error "Git repository not found. Please initialize git first."
        exit 1
    fi
    
    # Check if GitHub Pages branch exists
    if git show-ref --verify --quiet refs/heads/gh-pages; then
        print_status "Updating gh-pages branch..."
        git checkout gh-pages
        git pull origin gh-pages
    else
        print_status "Creating gh-pages branch..."
        git checkout -b gh-pages
    fi
    
    # Copy built files
    cp -r public/* .
    
    # Add and commit changes
    git add .
    git commit -m "Deploy website $(date)"
    
    # Push to GitHub
    git push origin gh-pages
    
    print_success "Deployed to GitHub Pages!"
    print_status "Your site should be available at: https://yourusername.github.io/academic-Haomeng/"
}

# Deploy to Netlify
deploy_netlify() {
    print_status "Deploying to Netlify..."
    
    # Check if netlify-cli is installed
    if ! command -v netlify &> /dev/null; then
        print_warning "Netlify CLI not found. Installing..."
        npm install -g netlify-cli
    fi
    
    # Deploy to Netlify
    netlify deploy --prod --dir=public
    
    print_success "Deployed to Netlify!"
}

# Deploy to Vercel
deploy_vercel() {
    print_status "Deploying to Vercel..."
    
    # Check if vercel-cli is installed
    if ! command -v vercel &> /dev/null; then
        print_warning "Vercel CLI not found. Installing..."
        npm install -g vercel
    fi
    
    # Deploy to Vercel
    vercel --prod public
    
    print_success "Deployed to Vercel!"
}

# Show usage
show_usage() {
    echo "Usage: $0 [OPTION]"
    echo ""
    echo "Options:"
    echo "  build     Build the website"
    echo "  test      Test the website locally"
    echo "  github    Deploy to GitHub Pages"
    echo "  netlify   Deploy to Netlify"
    echo "  vercel    Deploy to Vercel"
    echo "  all       Build and deploy to all platforms"
    echo "  help      Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 build"
    echo "  $0 test"
    echo "  $0 github"
    echo "  $0 all"
}

# Main script
main() {
    case "${1:-help}" in
        "build")
            check_hugo
            build_site
            ;;
        "test")
            check_hugo
            test_site
            ;;
        "github")
            check_hugo
            build_site
            deploy_github_pages
            ;;
        "netlify")
            check_hugo
            build_site
            deploy_netlify
            ;;
        "vercel")
            check_hugo
            build_site
            deploy_vercel
            ;;
        "all")
            check_hugo
            build_site
            deploy_github_pages
            deploy_netlify
            deploy_vercel
            ;;
        "help"|*)
            show_usage
            ;;
    esac
}

# Run main function
main "$@" 