class AddNumeToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :nume, :string
  end
end
