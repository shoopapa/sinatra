require "sinatra"
require "sinatra/reloader"

def wiki_page(name) 
	File.read("pages/#{name}.txt")
rescue Errno::ENOENT
	 return nil
end

get ("/") do
	erb :welcome
end

get "/:title" do
	wiki_page(params[:title])
end

