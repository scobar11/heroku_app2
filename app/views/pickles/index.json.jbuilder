json.array!(@pickles) do |pickle|
  json.extract! pickle, :id, :category, :message
  json.url pickle_url(pickle, format: :json)
end
