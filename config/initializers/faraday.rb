require 'faraday'

class DefaultHeadersMiddleware < Faraday::Middleware
    def initialize(app, options = {})
      super(app)
      @options = options
    end
  
    def call(env)
      env.request_headers.merge!(@options[:headers]) if @options[:headers]
      @app.call(env)
    end
  end

Faraday.new do |faraday|
    faraday.use DefaultHeadersMiddleware, headers: {
        'Content-Type' => 'application/json',
        'Authorization' => 'Bearer YOUR_ACCESS_TOKEN'
    }
    faraday.adapter Faraday.default_adapter
end