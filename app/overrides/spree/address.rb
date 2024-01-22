# frozen_string_literal: true

# https://trello.com/c/YZ0eSj8S/10-implement-creating-an-order-on-request-call-page
class Spree::Address < Spree::Base
  clear_validators!
  validates :address1, :city, :country_id, presence:  false
  validates :zipcode, presence: false
  validate :validate_phone_number

  private

  def validate_phone_number
    if phone.present? && !phone.match(/\A\+?\d{12,}\z/)
      errors.add(:phone, "#{I18n.t("spree.phone_val")}")
    end
  end
end