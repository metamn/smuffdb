class RenamePosts < ActiveRecord::Migration
  def self.up
    rename_table :wp_posts, :posts
  end

  def self.down
  end
end
