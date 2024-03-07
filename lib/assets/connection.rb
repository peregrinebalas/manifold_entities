module Connection
    def self.connection(*args)
        self.faraday(*args) do |f|
          f.headers['Content-Type']        = 'application/json'
          f.headers['InternalAPIPassword'] = ENV['INTERNAL_API_PASSWORD']
          f.headers['UserRole']            = ENV['USER_ROLE']
          f.headers['UserCode']            = ENV['USER_CODE']
        end
    end

    private
    
    def self.faraday(*args)
        Faraday.new(*args) do |f|
          yield(f) if block_given?
        end
    end
end