# frozen_string_literal: true

# https://trello.com/c/YZ0eSj8S/10-implement-creating-an-order-on-request-call-page
class Spree::Country < Spree::Base
  def self.default
    # find_by!(iso: Spree::Config.default_country_iso)
    find_by!(iso: 'BY')
  end
end