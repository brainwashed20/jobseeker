class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :nivel_cariera
      t.text :descriere
      t.text :competente_obligatorii
      t.text :competente_optionale
      t.text :beneficii

      t.timestamps
    end
  end
end
