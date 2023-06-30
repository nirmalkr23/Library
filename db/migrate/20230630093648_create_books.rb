class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_author
      t.integer :book_price

      t.timestamps
    end
  end
end
