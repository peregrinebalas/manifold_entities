require 'faraday'

Faraday.new do |faraday|
    faraday.headers['Authorization'] = 'Bearer your_api_key'
    faraday.adapter Faraday.default_adapter
end