class RemoveEmailsFromUnity < ActiveRecord::Migration[5.2]
  def change
    remove_column :unities, :emails, :string
  end
end
