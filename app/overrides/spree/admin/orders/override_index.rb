# frozen_string_literal: true

Deface::Override.new(
virtual_path: 'spree/admin/orders/index',
name: 'remove_show_only_complete_orders_checkbox',
remove: "[data-hook='admin_orders_index_search'] .field.checkbox"
)

Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'remove_variant_field',
  remove: '[data-hook="sku-select"]'
)

Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'remove_promotion_shipnumber_shipstatus_fields',
  remove: '[data-hook="admin_orders_index_search"] .field:nth-child(3), [data-hook="admin_orders_index_search"] .field:nth-child(4), [data-hook="admin_orders_index_search"] .field:nth-child(5)'
)