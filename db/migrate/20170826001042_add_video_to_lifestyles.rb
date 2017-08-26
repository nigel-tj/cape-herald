class AddVideoToLifestyles < ActiveRecord::Migration
  def change
    add_column :lifestyles, :video, :string
  end
end
