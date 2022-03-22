json.extract! item, :id, :sku, :mrp, :quantity, :discount, :net_price, :created_at, :updated_at
json.url item_url(item, format: :json)
