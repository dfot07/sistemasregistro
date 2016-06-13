json.array!(@repertories) do |repertory|
  json.extract! repertory, :id, :user_id, :num_repertory, :last_name, :name, :document, :inscription, :time_repertory, :date_repertory, :register, :num_inscription
  json.url repertory_url(repertory, format: :json)
end
