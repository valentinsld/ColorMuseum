json.extract! colour_piece, :id, :name, :url, :color, :description, :created_at, :updated_at
json.url colour_piece_url(colour_piece, format: :json)
