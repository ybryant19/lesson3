class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :message
      t.text :rating
      t.text :user_id
      t.text :place_id
      t.timestamps
    end

    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end
