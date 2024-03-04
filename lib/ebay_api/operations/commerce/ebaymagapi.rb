class EbayAPI
  scope :commerce do
    #
    # eBayMsa
    #
    # @see
    #
    scope :ebaymagapi do
      path { "ebaymagapi/v1" }

      require_relative "ebaymagapi/send_message"
    end
  end
end
