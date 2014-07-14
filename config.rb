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

# some of the pages live in helpscout now
SUPPORT_REDIRECTS = {
  'tests/creating.html'          => 'http://support.loader.io/article/15-creating-a-test',
  'tests/verifying.html'         => 'http://support.loader.io/article/20-verifying-an-app',
  'tests/test-types.html'        => 'http://support.loader.io/article/16-test-types',
  'tests/expression-syntax.html' => 'http://support.loader.io/article/21-expression-syntax',
  'tests/payload-files.html'     => 'http://support.loader.io/article/17-payload-files',
  'tests/variables.html'         => 'http://support.loader.io/article/18-variables',
  'tests/results.html'           => 'http://support.loader.io/article/19-test-results',
  'tests/faq.html'               => 'http://support.loader.io/category/29-frequently-asked-questions',

  'integrations/webhook.html'    => 'http://support.loader.io/article/23-webhook',
  'integrations/travis-ci.html'  => 'http://support.loader.io/article/24-travisci',
  'integrations/circle-ci.html'  => 'http://support.loader.io/article/25-circleci',
  'integrations/jenkins.html'    => 'http://support.loader.io/article/26-jenkins',
  'integrations/teamcity.html'   => 'http://support.loader.io/article/27-teamcity',
  'integrations/github.html'     => 'http://support.loader.io/article/28-github-service-hooks',
  'integrations/new-relic.html'  => 'http://support.loader.io/article/79-new-relic-integration',
}

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

  def meta_redirect_to_support
    if SUPPORT_REDIRECTS[request.path]
      "<meta http-equiv='refresh' content='0; url=#{SUPPORT_REDIRECTS[request.path]}'>"
    end
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
