class AddTrackToLifestyles < ActiveRecord::Migration
  def change
    add_column :lifestyles, :track, :string
  end
end
