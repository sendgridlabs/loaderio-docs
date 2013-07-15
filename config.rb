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
end
