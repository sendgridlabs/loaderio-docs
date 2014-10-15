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
  'tests/creating.html'          => 'http://support.sds.sendgrid.com/article/106-creating-a-test',
  'tests/verifying.html'         => 'http://support.sds.sendgrid.com/article/108-verifying-an-app',
  'tests/test-types.html'        => 'http://support.sds.sendgrid.com/article/109-test-types',
  'tests/expression-syntax.html' => 'http://support.sds.sendgrid.com/article/110-expression-syntax',
  'tests/payload-files.html'     => 'http://support.sds.sendgrid.com/article/111-payload-files',
  'tests/variables.html'         => 'http://support.sds.sendgrid.com/article/112-variables',
  'tests/results.html'           => 'http://support.sds.sendgrid.com/article/113-test-results',
  'tests/faq.html'               => 'http://support.sds.sendgrid.com/category/104-general-faqs',
  'tests/support.html'           => 'http://support.sds.sendgrid.com',

  'integrations/webhook.html'    => 'http://support.sds.sendgrid.com/article/125-webhooks',
  'integrations/travis-ci.html'  => 'http://support.sds.sendgrid.com/article/126-travisci',
  'integrations/circle-ci.html'  => 'http://support.sds.sendgrid.com/article/127-circleci',
  'integrations/jenkins.html'    => 'http://support.sds.sendgrid.com/article/128-jenkins',
  'integrations/teamcity.html'   => 'http://support.sds.sendgrid.com/article/129-teamcity',
  'integrations/github.html'     => 'http://support.sds.sendgrid.com/article/130-github-service-hooks',
  'integrations/new-relic.html'  => 'http://support.sds.sendgrid.com/article/172-new-relic-integration',
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

  def support_redirect
    SUPPORT_REDIRECTS[request.path]
  end

  def meta_redirect_to_support
    if support_redirect
      "<meta http-equiv='refresh' content='3; url=#{ support_redirect }'>"
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
