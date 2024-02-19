Deface::Override.new(
  virtual_path: 'spree/admin/variants/_form',
  name: 'remove_some_variants_elements',
  remove: '[data-hook="track_inventory"],
           [data-hook="tax_category"],
           [data-hook="shipping_category"],
           [data-hook="cost_price"],
           [data-hook="admin_variant_form_additional_fields"]'
)