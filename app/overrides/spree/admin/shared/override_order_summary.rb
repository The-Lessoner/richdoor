# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_summary',
  name: 'remove_order_total_section',
  remove: "[data-hook='admin_order_tab_total_title']",
  closing_selector: "[id='order_total']"
)
Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_summary',
  name: 'remove_payment_state_section',
  remove: "erb[silent]:contains('@order.payment_state')",
  closing_selector: "erb[silent]:contains('end')"
 )

