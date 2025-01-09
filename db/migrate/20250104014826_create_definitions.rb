class CreateDefinitions < ActiveRecord::Migration[8.0]
  def change
    create_table :definitions do |t|
      t.belongs_to :notion, null: false, foreign_key: true
      t.string :name, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
