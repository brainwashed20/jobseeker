class AddAdresaContactToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :adresa_contact, :string
  end
end
