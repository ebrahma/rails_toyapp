json.array!(@micropposts) do |microppost|
  json.extract! microppost, :id, :content, :user_id
  json.url microppost_url(microppost, format: :json)
end
