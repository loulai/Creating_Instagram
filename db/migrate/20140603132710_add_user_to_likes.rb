class AddUserToLikes < ActiveRecord::Migration
  def change
    add_reference :likes, :user, index: true
  end
end
