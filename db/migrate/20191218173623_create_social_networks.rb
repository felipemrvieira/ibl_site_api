class CreateSocialNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :social_networks do |t|
      t.references :sn_type, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
