class EbayAPI
  scope :ebaymagapi do
    scope :v1 do
      operation :poll_message do
        option :data, proc(&:to_h)

        path { "/poll_message" }
        http_method :post
        body { data }
      end
    end
  end
end
