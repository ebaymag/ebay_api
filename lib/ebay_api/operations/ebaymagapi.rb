class EbayAPI
  #
  # eBay Commerce APIs
  #
  # @see https://developer.ebay.com/api-docs/commerce/static/commerce-landing.html
  #
  scope :commerce do
    path "ebaymagapi"

    require_relative "ebaymagapi/ebaymagapi"
  end
end
