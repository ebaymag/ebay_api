class EbayAPI
  scope :commerce do
    #
    # eBay Commerce Media API Overview
    #
    # @see https://developer.ebay.com/api-docs/commerce/media/overview.html
    #
    scope :media do
      path { "media/v1_beta" }

      require_relative "media/document"
    end
  end
end
