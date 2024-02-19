Deface::Override.new(
  virtual_path: 'spree/admin/shared/_product_tabs',
  name: 'remove_stock_tab',
  remove: "erb[loud]:contains('Stock Management')",
  closing_selector: "erb[silent]:contains('Spree::StockItem')"
)

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_product_tabs',
  name: 'remove_price_tab',
  remove: "erb[loud]:contains('Prices')",
  closing_selector: "erb[silent]:contains('Spree::Price')"
)

