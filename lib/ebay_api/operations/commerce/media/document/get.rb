class EbayAPI
  scope :commerce do
    scope :media do
      scope :document do
        #
        # https://developer.ebay.com/api-docs/commerce/media/resources/document/methods/getDocument
        #
        operation :get do
          option :id, proc(&:to_s)

          path { id }
          http_method :get
        end
      end
    end
  end
end
