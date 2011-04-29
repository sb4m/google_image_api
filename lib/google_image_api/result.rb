module GoogleImageApi
  class Result
    def initialize(json)
      require 'json'
      @json = json
      @data = JSON::load(json)
    end

    def page
      @data.first
    end

    def images
      @data["responseData"]["results"]
    end

    def raw_data
      @data
    end

    def json
      @json
    end

  end
end
