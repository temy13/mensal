class RemoveAuthorFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :title, :string
    remove_column :answers, :book_id, :integer
  end
end
