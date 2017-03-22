module Spree
  ProductsController.class_eval do
    def out_of_stock
      @products = Product.joins(:variants_including_master).uniq
    end
  end
end
