require 'open-uri'
require 'nokogiri'
doc = Nokogiri::XML(open("http://www.gotown.com/towns"))
city = doc.xpath("//city");
puts city[0].css("description")[0] ;
