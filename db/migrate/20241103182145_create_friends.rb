class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.string :avatar
      t.string :message

      t.timestamps
    end
  end
end
