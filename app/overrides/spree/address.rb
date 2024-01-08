# frozen_string_literal: true

# https://trello.com/c/YZ0eSj8S/10-implement-creating-an-order-on-request-call-page
class Spree::Address < Spree::Base
  clear_validators!
  validates :address1, :city, :country_id, presence:  false
  validates :zipcode, presence: false
end