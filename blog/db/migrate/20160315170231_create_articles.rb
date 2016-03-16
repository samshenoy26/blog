class CreateArticles < ActiveRecord::Migration
  def change
    	=begin
		This is used to create a title column and a text 			column in 	the database
   	=end
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
