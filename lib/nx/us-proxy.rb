require "nokogiri"
require "open-uri"

module Nx
  class UsProxy
    def self.fetch()
      doc = Nokogiri::HTML(
        open(
          "https://www.us-proxy.org/",
          read_timeout: 5,
        )
      )

      # process html use selector
      rows = doc.css("#proxylisttable tbody tr")
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
