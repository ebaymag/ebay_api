class EbayAPI
  scope :commerce do
    scope :internal do
      operation :send_message do
        option :data, proc(&:to_h) # TODO: add model to validate input

        path { "/send_message" }
        http_method :post
        body { data }
      end
    end
  end
end
