require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN").text
courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .title-oE5vT4")
courses.each do |course|
  puts course.text.strip
end

#.title-oE5vT4 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC