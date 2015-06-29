# This migration comes from multi_database (originally 20150513103126)
class CreateMultiDatabaseDatabaseConnections < ActiveRecord::Migration
  def change
    create_table :multi_database_database_connections do |t|

      t.string :connection_name, null: false, unique: true
      t.string :database_name, null: false
      t.string :host, null: false
      t.string :username
      t.string :password
      t.integer :timeout
      t.boolean :active

      t.timestamps null: false
      
    end

    add_index :multi_database_database_connections, :connection_name
    add_index :multi_database_database_connections, :database_name
  end
end
