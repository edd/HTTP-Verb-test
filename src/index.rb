# I'm no Sinatra pro. There's probably a way to accept all HTTP verbs and echo them out
# However, this served the purposes of the test.

require 'sinatra'
set :static, true

get '/' do
	"GET"
end

post '/' do
	"POST"
end

put '/' do
	"PUT"
end

delete '/' do
	"DELETE"
end

