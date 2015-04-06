class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :nume
      t.string :nivel

      t.timestamps
    end
  end
end
