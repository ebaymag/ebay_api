class EbayAPI
  scope :ebaymagapi do
    #
    # eBayMsa
    #
    # @see
    #
    scope :v1 do
      path { "v1" }

      require_relative "send_message/send_message"
    end
  end
end
