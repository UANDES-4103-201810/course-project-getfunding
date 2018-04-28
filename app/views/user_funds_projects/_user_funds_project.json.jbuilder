json.extract! user_funds_project, :id, :User_id, :Project_id, :amount, :created_at, :updated_at
json.url user_funds_project_url(user_funds_project, format: :json)
