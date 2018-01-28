class AddNewsCategoryToFeatures < ActiveRecord::Migration
  def change
    add_reference :features, :news_category, index: true, foreign_key: true
  end
end
