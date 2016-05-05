json.array!(@keys) do |key|
  json.extract! key, :id, :serial_no, :key_class, :person_id, :missing
  json.url key_url(key, format: :json)
end
