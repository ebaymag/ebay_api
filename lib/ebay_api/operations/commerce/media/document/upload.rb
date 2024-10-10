class EbayAPI
  scope :commerce do
    scope :media do
      scope :document do
        #
        # https://developer.ebay.com/api-docs/commerce/media/resources/document/methods/uploadDocument
        #
        operation :upload do
          option :id
          option :file

          path { "#{id}/upload" }
          http_method :post
          body { data }
        end
      end
    end
  end
end
