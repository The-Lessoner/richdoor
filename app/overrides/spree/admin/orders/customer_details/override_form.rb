# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/admin/orders/customer_details/_form',
  name: 'remove_ship_address_wrapper_section',
  remove: "[data-hook='ship_address_wrapper']"
)
Deface::Override.new(
  virtual_path: 'spree/admin/orders/customer_details/_form',
  name: 'remove_guest_checkout_section',
  remove: "[data-hook='customer_guest'] .col-3"
)
