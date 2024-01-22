Deface::Override.new(
  virtual_path: 'spree/admin/images/index',
  name: 'remove_new_image_button',
  remove: "erb[loud]:contains('new_admin_product_image_url')"
)