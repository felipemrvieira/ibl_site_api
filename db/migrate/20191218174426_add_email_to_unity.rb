class AddEmailToUnity < ActiveRecord::Migration[5.2]
  def change
    add_column :unities, :email, :string
  end
end
