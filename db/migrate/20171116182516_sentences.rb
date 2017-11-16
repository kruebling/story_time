class Sentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.column :sentence, :text
      t.column :story_id, :integer
      t.column :image_id, :integer

      t.timestamps
    end
  end
end
