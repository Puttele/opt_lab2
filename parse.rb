require 'open-uri'
require 'nokogiri'

url = 'https://ru.wikipedia.org/wiki/Новосибирск'
html = open(url)
doc = Nokogiri::HTML(html)
value = doc.css('tr[class="no-wikidata"]')[].css('td').text
puts value