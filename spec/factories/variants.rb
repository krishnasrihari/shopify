FactoryGirl.define do
  factory :variant do
    product_id 1
    shopify_variant_id 1
    option2 "MyString"
    option2 "MyString"
    option3 "MyString"
    sku "MyString"
    barcode "MyString"
    price 1.5
    last_shopify_sync "2016-09-14 12:18:00"
  end
end
