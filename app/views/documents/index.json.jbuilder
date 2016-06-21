json.array!(@documents) do |document|
  json.extract! document, :id, :user_id, :name
  json.url document_url(document, format: :json)
end
