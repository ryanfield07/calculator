json.array!(@submittals) do |submittal|
  json.extract! submittal, :id, :req, :firstName, :lastName, :date, :location, :BR, :PR, :status, :submitter
  json.url submittal_url(submittal, format: :json)
end
