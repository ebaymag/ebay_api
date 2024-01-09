class EbayAPI
  scope :commerce do
    #
    # eBay Commerce Translation API
    #
    # @see https://developer.ebay.com/api-docs/commerce/translation/overview.html
    #
    scope :translation do
      path { "translation/v1_beta" }

      require_relative "translation/translate"
    end
  end
end
