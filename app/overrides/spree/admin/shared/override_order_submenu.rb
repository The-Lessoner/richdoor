Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_submenu',
  name: 'remove_some_sections_from_orders',
  remove: "[data-hook='admin_order_tabs_adjustments'],
           [data-hook='admin_order_tabs_payments'],
           [data-hook='admin_order_tabs_customer_returns'],
           [data-hook='admin_order_tabs_return_authorizations'], li:contains('Shipments')"
)

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_submenu',
  name: 'remove_shipments_tab',
  remove: "erb[loud]:contains('plural_resource_name(Spree::Shipment)')"
)