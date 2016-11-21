json.extract! inventory, :id, :item_name, :quantity_available, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)