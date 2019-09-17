# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190917113006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aquas", id: :bigserial, force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "driver_name",      limit: 255, null: false
    t.string   "driver_surname",   limit: 20,  null: false
    t.string   "driver_birthday",  limit: 20
    t.string   "TC_NO",            limit: 20
    t.string   "driver_tel",       limit: 50
    t.integer  "driver_adress"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "drivers_comments"
  end

  create_table "tasks", id: :bigserial, force: :cascade do |t|
    t.string   "gorev"
    t.text     "aciklama"
    t.boolean  "tamamlandi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name",              limit: 255,                    null: false
    t.string   "code",              limit: 20,                     null: false
    t.string   "vehicle_class",     limit: 20
    t.string   "brand",             limit: 20
    t.string   "model",             limit: 50
    t.integer  "model_year"
    t.integer  "fuel_capacity"
    t.string   "fuel_type",         limit: 10
    t.string   "status",            limit: 20,  default: "active"
    t.date     "purchase_date"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "vehicles_comments"
  end

end
