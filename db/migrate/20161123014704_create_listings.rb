class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :city
      t.integer :max_occupants
      t.text :address
      t.text :description
      t.integer :num_bedrooms
      t.boolean :availability
      t.decimal :price
      t.integer :num_bathrooms
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
