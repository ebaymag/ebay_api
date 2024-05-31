class EbayAPI
  #
  # eBay Commerce APIs
  #
  # @see https://developer.ebay.com/api-docs/commerce/static/commerce-landing.html
  #
  scope :ebaymagapi do
    path "ebaymagapi"

    require_relative "ebaymagapi/v1"
  end
end
