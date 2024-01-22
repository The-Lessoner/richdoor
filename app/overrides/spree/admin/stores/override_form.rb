Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'remove_bcc_email_field',
  remove: "erb[loud]:contains('f.field_container :bcc_email')",
  closing_selector: "erb[silent]:contains('end')"
)

Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'remove_cart_tax_country_iso_field',
  remove: "erb[loud]:contains('f.field_container :cart_tax_country_iso')",
  closing_selector: "erb[silent]:contains('end')"
)
