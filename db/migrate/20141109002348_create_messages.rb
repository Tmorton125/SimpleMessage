class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.column :creator_id, :integer
      t.column :name, :string, limit: 50, null: false
      t.column :content, :string
      t.column :is_disabled, :boolean, default: 1
      t.column :delivery_time, :datetime
      t.timestamps
    end

    add_index :messages, :creator_id, name: :idx_creator_id
    add_index :messages, :is_disabled, name: :idx_is_disabled


  end
end
