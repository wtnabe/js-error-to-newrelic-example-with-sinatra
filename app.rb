# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

post '/onerror' do
  202
end

__END__

@@ index
ほげー
