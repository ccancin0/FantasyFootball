json.extract! league_profile, :id, :profileName, :created_at, :updated_at
json.url league_profile_url(league_profile, format: :json)