class AddColumnToSentences < ActiveRecord::Migration[5.1]
  def change
    add_column(:sentences, :user_id, :integer)
  end
end
