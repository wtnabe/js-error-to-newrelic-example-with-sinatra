# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/reloader' if development?
require 'newrelic_rpm'

get '/' do
  erb :index
end

post '/onerror' do
  error = params.dup

  NewRelic::Agent.notice_error(
                         [error[:message], "", JSON.dump(error)].join,
                         {uri: error[:uri], custom_params: error})

  202
end

__END__

@@ index
ほげー
