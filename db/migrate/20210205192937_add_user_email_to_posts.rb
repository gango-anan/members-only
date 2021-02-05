class AddUserEmailToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_email, :string
  end
end
