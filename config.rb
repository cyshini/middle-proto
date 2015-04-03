###
# Blog settings
###

Time.zone = "Paris"

activate :blog do |blog|
  blog.name = "blog"
  blog.permalink = "blog/{title}.html"
  blog.sources = "blog/articles/{title}.html"
  blog.layout = "layouts/blog_layout"
  blog.default_extension = ".markdown"
  blog.paginate = true
  blog.per_page = 10
  blog.taglink = "blog/tags/{tag}.html"
  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"
end

page "/feed.xml", layout: false

# Reload the browser automatically whenever files change
activate :livereload

# Add site map file
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
  activate :minify_html

  activate :relative_assets
  set :relative_links, true

  activate :sitemap, hostname: data.settings.site.url

end
