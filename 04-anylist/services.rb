require 'open-uri'
require 'nokogiri'
BASE_URL = "https://www.alcampo.es/compra-online/"

def fetch_from_alcampo(term)
  url = BASE_URL + "search/?text=#{term}"
  html_string = open(url).read
  html_doc = Nokogiri::HTML(html_string)

  articles = []
  html_doc.search(".productGridItem h2 a").take(6).each do |link|
    articles << link[:title].strip
  end

  articles
end