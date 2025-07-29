class EbayAPI
  scope :ebaymagapi do
    scope :v1 do
      operation :poll_currency_exchange do
        option :data do |value|
          value.is_a?(Array) ? value : value.to_h
        end

        path { "/poll_currency_exchange" }
        http_method :post
        body { data }
      end
    end
  end
end
