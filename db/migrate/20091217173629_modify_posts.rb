class ModifyPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.rename :ID, :id
      
      t.rename :post_content, :body
    end  
  end

  def self.down
  end
end
