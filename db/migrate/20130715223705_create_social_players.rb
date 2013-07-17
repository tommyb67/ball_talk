class CreateSocialPlayers < ActiveRecord::Migration
  def up
    create_table :socialplayers do |t|
      t.string :id_str
      t.string :name
      t.string :screenname
      t.string :description
      t.timestamps
    end
  end

  def down
    drop_table :socialplayers
  end
end
