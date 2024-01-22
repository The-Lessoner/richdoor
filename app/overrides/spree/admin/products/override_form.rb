Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'remove_admin_product_some_forms_fields',
  remove: '[data-hook="admin_product_form_promotionable"],
           [data-hook="admin_product_form_cost_price"],
           [data-hook="admin_product_form_tax_category"],
           [id="shipping_specs"]'
)
