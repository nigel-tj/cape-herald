class AddImageInternationalFeatures < ActiveRecord::Migration
  def change
    add_column :international_features, :image, :string
  end
end
