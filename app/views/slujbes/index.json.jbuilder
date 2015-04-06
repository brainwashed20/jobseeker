json.array!(@slujbes) do |slujbe|
  json.extract! slujbe, :id, :nivel_cariera, :descriere, :competente_obligatorii, :competente_optionale, :beneficii
  json.url slujbe_url(slujbe, format: :json)
end
