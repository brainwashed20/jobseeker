class CreateCompaniesLocations < ActiveRecord::Migration
  def change
    create_table :companies_locations do |t|
    	t.integer :company_id
    	t.integer :location_id
    end
  end
end
