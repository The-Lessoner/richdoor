Rails.application.config.to_prepare do
  Spree::Admin::ProductsController.class_eval do
    def new
      @product = Spree::Product.new
      @product.available_on = Time.current
      @product.shipping_category_id=Spree::ShippingCategory.first.id
    end
  end
end