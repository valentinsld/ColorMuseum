class CreateColourPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :colour_pieces do |t|
      t.string :name
      t.string :url
      t.float :color
      t.text :description

      t.timestamps
    end
  end
end
