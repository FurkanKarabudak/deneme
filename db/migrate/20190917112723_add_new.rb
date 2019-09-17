class AddNew < ActiveRecord::Migration[5.0]
  def change
    change_table  :vehicles do |t|
  		t.string  :vehicles_comments
  	end
  end
end
