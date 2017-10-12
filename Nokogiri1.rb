#!/usr/bin/env ruby

	require 'rubygems'
	require 'open-uri'
	require 'nokogiri'


def get_URL_Val_dOise()
		page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
		links = page.css("a.lientxt")
		liste = links.each{|departement| puts 'URL=' + departement['href']}
end

get_URL_Val_dOise

