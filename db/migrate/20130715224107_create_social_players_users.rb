class CreateSocialPlayersUsers < ActiveRecord::Migration
  def up
    create_table :socialplayers_users do |t|
      t.belongs_to :users
      t.belongs_to :socialplayers
      t.timestamps
    end
  end

  def down
    drop_table :socialplayers_user
  end
end
