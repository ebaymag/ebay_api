class EbayAPI
  scope :commerce do
    scope :translation do
      operation :translate do
        option :data, proc(&:to_h) # TODO: add model to validate input

        path { "/translate" }
        http_method :post
        body { data }
      end
    end
  end
end
