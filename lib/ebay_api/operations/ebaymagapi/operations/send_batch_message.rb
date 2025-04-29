class EbayAPI
  scope :ebaymagapi do
    scope :v1 do
      operation :send_batch_message do
        option :data do |value|
          value.is_a?(Array) ? value : value.to_h
        end

        path { "/send_batch_message" }
        http_method :post
        body { data }
      end
    end
  end
end


