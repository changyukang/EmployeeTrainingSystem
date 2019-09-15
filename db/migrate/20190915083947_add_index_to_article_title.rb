class AddIndexToArticleTitle < ActiveRecord::Migration[6.0]
  def change
  	add_index :articles, :title, unique: true #Helps guarantee uniqueness on title
  end
end
