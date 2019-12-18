class CreatePreRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :pre_registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :unity_type, foreign_key: true
      t.references :unity, foreign_key: true

      t.timestamps
    end
  end
end
