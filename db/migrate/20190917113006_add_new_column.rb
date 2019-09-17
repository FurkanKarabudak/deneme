class AddNewColumn < ActiveRecord::Migration[5.0]
  def change
    change_table  :drivers do |t|
  		t.string  :drivers_comments
  	end
  end
end
