class AddUnityToSocialNetwork < ActiveRecord::Migration[5.2]
  def change
    add_reference :social_networks, :unity, foreign_key: true
  end
end
