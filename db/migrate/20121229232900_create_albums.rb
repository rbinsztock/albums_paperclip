class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
