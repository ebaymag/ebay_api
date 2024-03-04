class EbayAPI
  scope :commerce do
    #
    # eBayMsa
    #
    # @see
    #
    scope :internal do
      path { "ebaymagapi/v1" }

      require_relative "ebaymagapi/send_message"
    end
  end
end
