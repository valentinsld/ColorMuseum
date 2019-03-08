class CreateColourArts < ActiveRecord::Migration[5.2]
  def change
    create_table :colour_arts do |t|
      t.string :name
      t.string :author
      t.string :url
      t.float :colorRank
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
