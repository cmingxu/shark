#encoding=utf-8

require 'ostruct'

helpers do
  def some_helper
    "Helping"
  end

  def config
    OpenStruct.new(
      :title => "TransformOne - Cloud Clinical Trail Solution",
      :keywords => "Clinical Trial, Cloud Solution, cost saving, time saving, pharmaceutical trial",
      :description => "cloud solution form clinical trial data collecting and data analysis"
    )
  end
end

%w{ product contact blog solution }.each do |link|
  page "#{link}"
end
set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
