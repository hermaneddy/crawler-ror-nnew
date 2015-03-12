require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do

	url = "http://www.930.com/concerts/"

	data = Nokogiri::HTML(open(url))

	@concerts = data.css('.tfly-venue-id-2')

    erb :shows 
end	

