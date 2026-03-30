# frozen_string_literal: true

require "net/http"
require "json"
require "uri"

module WhiskeyFYI
  class Client
    DEFAULT_BASE_URL = "https://whiskeyfyi.com/api"

    def initialize(base_url: DEFAULT_BASE_URL)
      @base_url = base_url
    end

    def search(query)
      get("/search/", q: query)
    end

    def entity(slug)
      get("/expression/#{slug}/")
    end

    def glossary_term(slug)
      get("/glossary/#{slug}/")
    end

    def random
      get("/random/")
    end

    private

    def get(path, params = {})
      uri = URI("#{@base_url}#{path}")
      uri.query = URI.encode_www_form(params) unless params.empty?

      response = Net::HTTP.get_response(uri)

      unless response.is_a?(Net::HTTPSuccess)
        raise Error, "HTTP #{response.code}: #{response.body}"
      end

      JSON.parse(response.body, symbolize_names: true)
    end
  end

  class Error < StandardError; end
end
