class EbayAPI
  scope :commerce do
    #
    # eBay Commerce Media API about document
    #
    scope :media do
      scope :document do
        path { "document" }

        require_relative "document/get"
        require_relative "document/create"
        require_relative "document/upload"
      end
    end
  end
end
