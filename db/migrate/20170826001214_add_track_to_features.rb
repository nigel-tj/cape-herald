class AddTrackToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :track, :string
  end
end
