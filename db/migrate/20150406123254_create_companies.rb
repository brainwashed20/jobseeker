class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :numar_angajati
      t.string :pagina_web
      t.text :descriere

      t.timestamps
    end
  end
end
