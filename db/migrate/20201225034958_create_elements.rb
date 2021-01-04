class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :element_type
      t.text :content
      t.references :post, null: false, foreign_key: true
      t.integer :posiiton

      t.timestamps
    end
  end
end
