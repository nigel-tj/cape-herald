class LocalFeatures < ActiveRecord::Migration
  def change
    create_table :local_features do |t|
      t.text :link
      t.text :main_image
      t.text :intro
      t.text :thumb
      t.string :heading
      t.text :body
      t.string :video
      t.string :track

      t.timestamps null: false
    end
  end
end
