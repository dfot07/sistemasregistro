json.array!(@prohibitions) do |prohibition|
  json.extract! prohibition, :id, :user_id, :last_name, :name, :type_prohibition, :inscription, :date_inscription
  json.url prohibition_url(prohibition, format: :json)
end
