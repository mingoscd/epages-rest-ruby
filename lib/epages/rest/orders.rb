require 'epages/rest/utils'

module Epages
  module REST
    module Orders
      # implements the calls in https://developer.epages.com/apps/api-reference/resource-orders.html
      include REST::Utils

      # implements the calls in https://developer.epages.com/apps/api-reference/get-shops-shopid-orders.html
      def orders(options = {})
        perform_get_with_key_and_objects('/orders', options, :items, Epages::Order)
      end

      # implements the calls in https://developer.epages.com/apps/api-reference/get-shops-shopid-orders-orderid.html
      def order(object, options = {})
        id = epages_id(object)
        perform_get_with_object("/orders/#{id}", options, Epages::Order)
      end

      # implements the calls in https://developer.epages.com/apps/api-reference/put-shops-shopid-orders-orderid.html
      def update_order(order, options, locale = 'en_GB')
        id = epages_id(order)
        perform_put_with_object("/orders/#{id}?locale=#{locale}", order(id).merge(options), Epages::Order)
      end
    end
  end
end