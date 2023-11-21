#
# findSellerStandardsProfiles
#
class EbayAPI
  scope :sell do
    scope :analytics do
      scope :seller_standards_profile do
        path "seller_standards_profile"

        operation :get do
          http_method :get
        end
      end
    end
  end
end
