class CreateSolicitations < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitations do |t|
      t.integer :user_id
      t.integer :follower_id
      t.boolean :accecpt

      t.timestamps
    end
    add_index :solicitations, :user_id
    add_index :solicitations, :follower_id
    add_index :solicitations, [:user_id, :follower_id], unique: true
  end
end
