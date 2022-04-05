json.extract! record, :id, :artist, :genre, :description, :text, :condition, :title, :price, :created_at, :updated_at
json.url record_url(record, format: :json)
