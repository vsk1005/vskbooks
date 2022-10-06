json.extract! buku, :id, :title, :author, :created_at, :updated_at
json.url buku_url(buku, format: :json)
