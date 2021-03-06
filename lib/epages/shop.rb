require 'epages/error'

module Epages
  class Shop
    attr_accessor :host, :name, :token

    def initialize(host, name, token = nil)
      @host = host
      @name = name
      @token = token
    end

    # return the shop name
    def shop_name
      name
    end

    # retuns a boolean indicating if the shop has a token set
    def token?
      !!token
    end
  end
end
