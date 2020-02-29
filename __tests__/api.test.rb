require "open-uri"

real_ip = res = open(
  "http://icanhazip.com/",
  read_timeout: 5,
).read.strip

proxy_ip = open(
  "http://icanhazip.com/",
  read_timeout: 5,
  proxy: "http://209.141.46.133:8080",
).read.strip

p real_ip, proxy_ip

# "112.112.110.6"
# "209.141.46.133"
