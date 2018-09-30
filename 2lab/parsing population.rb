require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://ru.wikipedia.org/wiki/%D0%91%D0%B5%D1%80%D0%B4%D1%81%D0%BA'))

puts "Население:"
doc.css('tr td span.no-wikidata span.nowrap', 'article td').each do |link|
  puts link.content
end