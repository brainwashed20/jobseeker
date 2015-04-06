json.array!(@user_accounts) do |user_account|
  json.extract! user_account, :id, :prenume, :nume, :data_nasterii
  json.url user_account_url(user_account, format: :json)
end
