require 'httparty'

module Air
  module Api
    include HTTParty
    base_uri 'http://air-topics.herokuapp.com/api/v1'

    def self.list
      self.get '/topics'
    end

    def self.fetch id
      self.get "/topics/#{id}"
    end
  end
end
