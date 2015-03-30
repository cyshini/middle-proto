###
# Blog settings
###

Time.zone = "Paris"

activate :blog do |blog|
  blog.name = "blog"
  blog.prefix = "blog"
  blog.permalink = "{title}.html"
  blog.sources = "articles/{title}.html"
  blog.layout = "layouts/blog_layout"
  blog.default_extension = ".markdown"
  blog.paginate = false
  blog.taglink = "categories/{tag}.html"
  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
end

page "blog/feed.xml", layout: false

# Reload the browser automatically whenever files change
activate :livereload

# Activate sitemap
page "/sitemap.xml", layout: false

# Assets directories
set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'

#Activate deploy plugin
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'gh-pages'
  deploy.build_before = true
end

# Build-specific configuration
configure :build do

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true

end
