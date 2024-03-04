class EbayAPI
  scope :commerce do
    #
    # eBayMsa
    #
    # @see
    #
    scope :translation do
      path { "internal/v1" }

      require_relative "internal/send_message"
    end
  end
end
