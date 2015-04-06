class AddPozaToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :poza, :string
  end
end
