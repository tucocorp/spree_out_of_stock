require 'spec_helper'

describe Spree::Variant do
  describe "#products ran out of stock" do
    before(:each) do
      @variant = create(:variant, sku:"ROR-00012")
      @stock_items = Spree::StockItem.new(variant_id: @variant.id, count_on_hand: 0,updated_at: "2017-03-23")
    end

    it "returns true if there are products ran out stock" do
      products_ran_of_stock = @variant.stock_items.where(count_on_hand: 0)
      expect(products_ran_of_stock.count).to eq(1)
    end
    it "expected products ran out stock before than '2017-03-25' " do
      products_ran_of_stock = @variant.stock_items.where("count_on_hand = 0 and updated_at < ? ","2017-03-25")
      expect(products_ran_of_stock.count).to eq(1)
    end
    it "Not expected products ran out stock after '2017-03-25' " do
      products_ran_of_stock = @variant.stock_items.where("count_on_hand = 0 and updated_at > ? ","2017-03-25")
      expect(products_ran_of_stock.count).to eq(0)
    end
    it "expected products ran out stock between '2017-03-22' and '2017-03-25' " do
      products_ran_of_stock = @variant.stock_items.where("count_on_hand = 0 and updated_at > ? and updated_at < ? ","2017-03-22","2017-03-25")
      expect(products_ran_of_stock.count).to eq(1)
    end
  end
end
