module GoogleImageApi
  class Url
    def initialize(uri)
      @uri = uri
    end

    def title
      return @title if @title
      uri     = URI.parse( @uri )
      @title  = URI.decode( uri.path.split('/').last )
    end
  end
end
