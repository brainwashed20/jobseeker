class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :prenume
      t.string :nume
      t.date :data_nasterii

      t.timestamps
    end
  end
end
