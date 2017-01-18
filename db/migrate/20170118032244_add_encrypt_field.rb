class AddEncryptField < ActiveRecord::Migration
  def change
  	rename_column :users, :name, :encrypted_name
  	add_column :users, :encrypted_name_iv, :string
  end
end