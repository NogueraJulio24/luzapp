json.extract! product, :id, :name, :code, :buy_price, :description, :brand_id, :category_id, :provider_id, :created_at, :updated_at
json.url product_url(product, format: :json)
