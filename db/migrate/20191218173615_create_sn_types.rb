class CreateSnTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :sn_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
