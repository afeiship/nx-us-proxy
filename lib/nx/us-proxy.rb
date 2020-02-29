require "nokogiri"
require "open-uri"
require "json"

module Nx
  class UsProxy
    def self.fetch(proxy = "http://127.0.0.1:9090")
      doc = Nokogiri::HTML(
        open(
          "https://www.us-proxy.org/",
          read_timeout: 5,
          proxy: proxy,
        )
      )

      # process html use selector
      rows = doc.css("#proxylisttable tr")
      data = []
      rows.each do |row|
        ip = row.css("td:nth-child(1)").text
        port = row.css("td:nth-child(2)").text
        data << { ip: ip, port: port }
      end

      return data
    end
  end
end
