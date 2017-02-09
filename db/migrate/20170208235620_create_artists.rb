class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false 
      t.string :album, null: false 

      t.timestamps
      t.belongs_to :billboard 
    end
  end
end
