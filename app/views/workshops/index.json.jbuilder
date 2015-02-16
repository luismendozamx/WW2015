json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :title, :description, :slug
  json.url workshop_url(workshop, format: :json)
end
