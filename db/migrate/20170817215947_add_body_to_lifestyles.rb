class AddBodyToLifestyles < ActiveRecord::Migration
  def change
    add_column :lifestyles, :body, :text
  end
end
