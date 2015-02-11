require 'sinatra'

get '/' do
  redirect '/index.html'
end

get '/text' do
  (0...20000).map { ('a'..'z').to_a[rand(26)] }.join
end
