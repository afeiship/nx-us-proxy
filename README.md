# nx-us-proxy
> Get us free proxies for ruby.

## installation
```rb
# from gem
gem 'nx-us-proxy'
# from git
gem 'nx-us-proxy', git: 'git@github.com:afeiship/nx-us-proxy.git'
```

## usage
```rb
Nx::UsProxy::fetch

# result
[
    {
        :ip=>"138.197.74.25", 
        :port=>"8118"
    }, 
    {
        :ip=>"167.172.17.86", 
        :port=>"3128"
    }
    # ...
]
```

## resources
- https://www.us-proxy.org/