# This migration comes from blacklight (originally 20140202020202)
# frozen_string_literal: true
class CreateBookmarks < ActiveRecord::Migration[5.1]
  def self.up
    create_table :bookmarks do |t|
      t.integer :user_id, :null=>false
      t.string :user_type
      t.string :document_id
      t.string :title
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :bookmarks
  end
  
end
