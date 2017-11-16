class AddForeignKeyToImage < ActiveRecord::Migration[5.1]
  def change
    add_column(:images, :sentence_id, :integer)
  end
end
