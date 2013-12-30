set :source_dir, 'docs'
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

set :relative_links, true

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end

helpers do
  def api_link?(section)
    return /api\/[\w\d:\/]*#{section}/ =~ current_resource.path
  end

  def nav_link(text, url, opts={}, classname="current")
    if '/' + request.path == url
      opts[:class] = classname
    end
    link_to(text, url, opts)
  end

  def embedcurl(curl, title="", width="100%", classname="embedcurl")
    return "<pre class=\"#{classname}\" width=\"#{width}\" title=\"#{title}\">#{curl}</pre>"
  end
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  deploy.branch = "gh-pages"
end
