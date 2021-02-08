class RemoveUserEmailFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user_email, :string
  end
end
