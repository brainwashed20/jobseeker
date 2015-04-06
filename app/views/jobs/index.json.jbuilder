json.array!(@jobs) do |job|
  json.extract! job, :id, :nivel_cariera, :descriere, :competente_obligatorii, :competente_optionale, :beneficii
  json.url job_url(job, format: :json)
end
