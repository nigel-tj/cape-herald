class AddImageLocalFeatures < ActiveRecord::Migration
  def change
    add_column :local_features, :image, :string
  end
end
