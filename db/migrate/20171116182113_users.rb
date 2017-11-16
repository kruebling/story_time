class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :story_id, :integer
      t.column :sentence_id, :integer

      t.timestamps
    end
  end
end
