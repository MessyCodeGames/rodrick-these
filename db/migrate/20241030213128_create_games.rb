class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.integer :lives

      t.timestamps
    end
  end
end
