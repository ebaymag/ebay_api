class EbayAPI
  scope :ebaymagapi do
    #
    # eBayMsa
    #
    # @see
    #
    scope :v1 do
      path { "v1" }

      require_relative "operations/send_message"
      require_relative "operations/poll_message"
      require_relative "operations/send_batch_message"
    end
  end
end
