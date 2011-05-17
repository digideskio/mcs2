class AddFieldsToServer < ActiveRecord::Migration
  def self.up
    add_column :servers, :name, :string
    add_column :servers, :website, :string
    add_column :servers, :description, :text
    add_column :servers, :mc_server_address, :string
    add_column :servers, :location, :string
    add_column :servers, :game_mode, :integer
    add_column :servers, :whitelist_url, :string
    add_column :servers, :port, :integer
    add_column :servers, :status, :boolean
  end

  def self.down
    remove_column :servers, :name, :string
    remove_column :servers, :website, :string
    remove_column :servers, :description, :text
    remove_column :servers, :mc_server_address, :string
    remove_column :servers, :location, :string
    remove_column :servers, :game_mode, :integer
    remove_column :servers, :whitelist_url, :string
    remove_column :servers, :port, :integer
    remove_column :servers, :status, :boolean
  end
end
