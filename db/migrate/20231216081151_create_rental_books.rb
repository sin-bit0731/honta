class CreateRentalBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :rental_books do |t|
      t.string :author
      t.string :title
      t.string :publisher
      t.integer :category_id
      t.integer :condition_id
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
