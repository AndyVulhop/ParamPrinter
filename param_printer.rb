require 'sinatra'

configure do
	disable :protection
end

get '/*/' do
	path = params[:splat][0]
	params.delete(:splat.to_s)
	params.delete(:captures.to_s)
	"<h1>This is #{path}</h1><br/><br/><p>#{params.inspect}</p>"
end

post '/*/' do
	path = params[:splat][0]
	params.delete(:splat.to_s)
	params.delete(:captures.to_s)
	"<h1>This is #{path}</h1><br/><br/><p>#{params.inspect}</p>"
end
