class Stories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.column :user_id, :integer
      t.column :sentence_id, :integer

      t.timestamps
    end
  end
end
