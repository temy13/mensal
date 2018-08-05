class AddColumnsToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :rakuten_isbn13, :string
    add_column :books, :rakuten_genre_id, :string
    add_column :books, :rakuten_caption, :string
    add_column :books, :rakuten_title, :string
  end
end
