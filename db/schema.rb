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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160612212956) do

  create_table "appearers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "inscription_id"
    t.string   "last_name"
    t.string   "name"
    t.string   "type_appearer"
    t.string   "type_representative"
    t.string   "representative"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "appearers", ["inscription_id"], name: "index_appearers_on_inscription_id"
  add_index "appearers", ["user_id"], name: "index_appearers_on_user_id"

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "num_inscription"
    t.string   "act"
    t.string   "date_inscription"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "inscriptions", ["user_id"], name: "index_inscriptions_on_user_id"

  create_table "repertories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "num_repertory"
    t.string   "last_name"
    t.string   "name"
    t.string   "document"
    t.string   "inscription"
    t.time     "time_repertory"
    t.date     "date_repertory"
    t.string   "register"
    t.string   "num_inscription"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "repertories", ["user_id"], name: "index_repertories_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
