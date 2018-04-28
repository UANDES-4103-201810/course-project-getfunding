json.extract! wishlist, :id, :User_id, :Project_id, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
