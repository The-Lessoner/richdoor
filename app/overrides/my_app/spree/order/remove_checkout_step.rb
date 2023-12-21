# frozen_string_literal: true

# https://trello.com/c/YZ0eSj8S/10-implement-creating-an-order-on-request-call-page
module MyApp
  module Spree
    module Order
      module RemoveCheckoutStep
        def self.prepended(base)
          # base.remove_checkout_step :address
          base.remove_checkout_step :delivery
          base.remove_checkout_step :payment

        end

        ::Spree::Order.prepend self
      end
    end
  end
end