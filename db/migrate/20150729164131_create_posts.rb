class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post
      t.text :author
    end
  end
end
