class CreateFavorites < ActiveRecord::Migration
  def up
    create_table :favorites, id: false do |t|
      t.belongs_to :user
      t.belongs_to :socialplayer
      t.timestamps
    end
  end

  def down
    drop_table :favorites
  end
end
