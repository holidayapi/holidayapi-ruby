require 'addressable/uri'
require 'json'
require 'net/http'
require 'openssl'

module HolidayAPI
  class V1
    def initialize(key = false)
      @key = key
    end

    def holidays(params = Hash.new)
      if !params.has_key?('key')
        params['key'] = @key
      end

      uri = Addressable::URI.new
      uri.query_values = params

      uri = URI("https://holidayapi.com/v1/holidays?#{uri.query}")

      Net::HTTP.start(
        uri.host,
        uri.port,
        :use_ssl => true,
        :verify_mode => OpenSSL::SSL::VERIFY_NONE
      ) do |http|
        request = Net::HTTP::Get.new uri

        response = http.request request
        return JSON.parse(response.body)
      end
    end
  end
end

