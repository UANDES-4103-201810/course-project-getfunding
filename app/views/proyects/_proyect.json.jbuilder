json.extract! proyect, :id, :User_id, :name, :description, :category, :goal, :money_colected, :expiration_date, :state, :start_date, :created_at, :updated_at
json.url proyect_url(proyect, format: :json)
