class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :main_type
      t.string :play_type
      t.string :play_size
      t.integer :use_years
      t.string :address
      t.string :listing_title
      t.text :listing_content
      t.integer :price_onedayuse
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
