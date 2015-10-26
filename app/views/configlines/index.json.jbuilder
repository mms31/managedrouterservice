json.array!(@configlines) do |configline|
  json.extract! configline, :id, :router_id, :linenumber, :lineconfig
  json.url configline_url(configline, format: :json)
end
