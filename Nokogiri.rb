#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'
doc = Nokogiri::HTML(open("https://www.booska-p.com"))
doc.xpath('/html/body/div[3]/div[1]/div[1]/article/h3/a').each do |node|
        puts node.text
end