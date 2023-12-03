# frozen_string_literal: true

require 'spree/core/product_filters'

module TaxonFiltersHelper
  def applicable_filters_for(_taxon)

    # https://trello.com/c/1B1RWflA/5-investigate-how-to-remove-price-range-filter-and-remove-it
    # [:brand_filter, :price_filter].map do |filter_name|
    [:brand_filter].map do |filter_name|
      Spree::Core::ProductFilters.send(filter_name) if Spree::Core::ProductFilters.respond_to?(filter_name)
    end.compact
  end
end
