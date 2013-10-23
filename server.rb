require 'rubygems'
require 'bundler/setup'
Bundler.require

get '/' do
  resp = Embedder.parse('http://www.youtube.com/watch?v=VzZ_pHmauVo').inspect

  Rack::Utils.escape_html(resp)
end

