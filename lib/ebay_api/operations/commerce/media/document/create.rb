class EbayAPI
  scope :commerce do
    scope :media do
      scope :document do
        #
        # https://developer.ebay.com/api-docs/commerce/media/resources/document/methods/createDocument
        #
        operation :create do
          option :data, proc(&:to_h)

          path { "/" }
          http_method :post
          body { data }
        end
      end
    end
  end
end
