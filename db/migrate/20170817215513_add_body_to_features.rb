class AddBodyToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :body, :text
  end
end
