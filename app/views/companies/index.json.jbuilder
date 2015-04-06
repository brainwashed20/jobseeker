json.array!(@companies) do |company|
  json.extract! company, :id, :numar_angajati, :pagina_web, :descriere
  json.url company_url(company, format: :json)
end
