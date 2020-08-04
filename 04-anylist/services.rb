require "open-uri"
require "nokogiri"

BASE_URL = "https://www.alcampo.es/compra-online/search/"

def fetch_from_alcampo(query)
  url = BASE_URL + "?text=#{query}"

  html = open(url).read
  document = Nokogiri::HTML(html)

  document.search(".productName").take(6).map do |element|
    element.search("span").first.text.strip
  end
end
