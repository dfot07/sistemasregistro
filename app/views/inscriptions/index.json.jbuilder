json.array!(@inscriptions) do |inscription|
  json.extract! inscription, :id, :user_id, :num_inscription, :act, :date_inscription
  json.url inscription_url(inscription, format: :json)
end
