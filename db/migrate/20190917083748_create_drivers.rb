class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string   :driver_name, limit: 255, null: false
      t.string   :driver_surname, limit: 20, null: false
      t.string   :driver_birthday, limit: 20
      t.string   :TC_NO,  limit: 20
      t.string   :driver_tel, limit: 50
      t.integer  :driver_adress

      t.timestamps
    end
  end
end
