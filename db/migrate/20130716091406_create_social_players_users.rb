class CreateSocialPlayersUsers < ActiveRecord::Migration
  def up
     create_table "socialplayers_users", :force => true do |t|
    t.integer  "users_id"
    t.integer  "socialplayers_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    end
  end

  def down
    drop_table :socialplayers_users
  end
end
