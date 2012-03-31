class CreateNovinkies < ActiveRecord::Migration
  def change
    create_table :novinkies do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
