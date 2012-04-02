class CreateFotkies < ActiveRecord::Migration
  def change
    create_table :fotkies do |t|
      t.string :title
      t.text :description
      t.string :image_url


      t.timestamps
    end
  end
end
