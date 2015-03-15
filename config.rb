###
# Blog settings
###

Time.zone = "Paris"

activate :blog do |blog|
  blog.name = "blog"
  blog.permalink = "blog/:title.html"
  blog.sources = "blog/articles/:title.html"
  blog.layout = "layouts/blog_layout"
  blog.default_extension = ".markdown"
  blog.paginate = false
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
end

page "/feed.xml", layout: false

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

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
