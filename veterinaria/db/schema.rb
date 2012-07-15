# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120715062127) do

  create_table "attentions", :force => true do |t|
    t.string   "medical_notes"
    t.string   "medical_images"
    t.string   "special_conditions"
    t.integer  "users_id"
    t.integer  "owners_id"
    t.integer  "patients_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "attentions", ["owners_id"], :name => "index_attentions_on_owners_id"
  add_index "attentions", ["patients_id"], :name => "index_attentions_on_patients_id"
  add_index "attentions", ["users_id"], :name => "index_attentions_on_users_id"

  create_table "howners", :force => true do |t|
    t.string   "comment"
    t.integer  "owner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "howners", ["owner_id"], :name => "index_howners_on_owner_id"

  create_table "hpatients", :force => true do |t|
    t.string   "comment"
    t.string   "picture"
    t.string   "condition"
    t.integer  "patient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "hpatients", ["patient_id"], :name => "index_hpatients_on_patient_id"

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "photo"
    t.string   "phone"
    t.string   "mobilephone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "species"
    t.string   "race"
    t.string   "gender"
    t.string   "bloodtype"
    t.string   "sterilized"
    t.string   "size"
    t.string   "activity"
    t.float    "weight"
    t.date     "birthday"
    t.integer  "owner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "patients", ["owner_id"], :name => "index_patients_on_owner_id"

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "housephone"
    t.string   "mobilephone"
    t.string   "address"
    t.string   "photo"
    t.integer  "profile_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "users", ["profile_id"], :name => "index_users_on_profile_id"

end
