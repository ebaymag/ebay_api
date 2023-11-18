#
# findSellerStandardsProfiles
# https://developer.ebay.com/api-docs/sell/analytics/resources/seller_standards_profile/methods/findSellerStandardsProfiles
#
class EbayAPI
  scope :sell do
    scope :analytics do
      path { "analytics/v#{EbayAPI::SELL_INVENTORY_VERSION[/^\d+/]}" }

      require_relative "analytics/seller_standards_profile"
    end
  end
end
