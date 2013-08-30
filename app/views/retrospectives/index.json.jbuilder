json.array!(@retrospectives) do |retrospective|
  json.extract! retrospective, :name, :set_stage, :gather_data, :generate_insights, :decide_what_to_do, :close
  json.url retrospective_url(retrospective, format: :json)
end
