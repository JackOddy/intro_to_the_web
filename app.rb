require 'sinatra'

get ('/') do
  'hello world'
end

get ('/secret') do
  "you're handsome"
end

get ('/truth') do
  'cold potatoes ain\'t hot'
end

get('/random-cat') do
  names = ['Mittens', 'Isiah', 'Ephraim', 'Ezekeal', 'Noah']
  erb(:index) {names.sample}
end

get('/named-cat') do
  name = params[:name]
  erb(:index) {name}
end
