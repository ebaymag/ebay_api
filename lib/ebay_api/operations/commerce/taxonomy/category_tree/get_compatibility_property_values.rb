class EbayAPI
  scope :commerce do
    scope :taxonomy do
      scope :category_tree do
        # @see https://developer.ebay.com/api-docs/commerce/taxonomy/resources/category_tree/methods/getCompatibilityPropertyValues
        operation :get_compatibility_property_values do
          option :category_id, proc(&:to_s)
          option :compatibility_property, proc(&:to_s)
          option :filter, proc(&:to_s)

          path { "get_compatibility_property_values" }
          query { { category_id: category_id } }
          http_method :get
        end
      end
    end
  end
end
