json.extract! player, :id, :name, :injured, :sick, :suspended, :created_at, :updated_at
json.url player_url(player, format: :json)