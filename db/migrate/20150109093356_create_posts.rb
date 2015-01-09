class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.references :user, index: true
    end
    add_foreign_key :posts, :users
  end
end
