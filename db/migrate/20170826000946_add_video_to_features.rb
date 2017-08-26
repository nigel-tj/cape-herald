class AddVideoToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :video, :string
  end
end
