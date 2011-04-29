Dir[File.dirname(__FILE__) + '/google_image_api/**/*.rb'].each { |f| require f }

module GoogleImageApi

  # @search = "term"
  #
  # result = GoogleImageApi.find(@search, {
  #   :imgsz => "medium",
  #   :rsz => 8,
  #   :start => 8,
  #   :imgtype  => "face",
  #   :as_filetype => "jpg"
  # })
  #
  # result.images.each do |img|
  #   puts img['url']
  # end

  def self.Configure(&block)
    Configuration.instance.instance_eval(&block)
  end

  def self.find( query, options = {} )
    client.find( query, options )
  end

  Configure {
    key nil
  }

  private

  def self.client
    @client ||= GoogleImageApi::Client.new
  end

end
