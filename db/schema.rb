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

ActiveRecord::Schema.define(version: 20160629230557) do

  create_table "appearers", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.integer  "inscription_id",      limit: 4
    t.string   "last_name",           limit: 255
    t.string   "name",                limit: 255
    t.string   "type_appearer",       limit: 255
    t.string   "type_representative", limit: 255
    t.string   "representative",      limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "appearers", ["inscription_id"], name: "index_appearers_on_inscription_id", using: :btree
  add_index "appearers", ["user_id"], name: "index_appearers_on_user_id", using: :btree

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "num_inscription",  limit: 255
    t.string   "act",              limit: 255
    t.string   "date_inscription", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "inscriptions", ["user_id"], name: "index_inscriptions_on_user_id", using: :btree

  create_table "prohibitions", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "last_name",        limit: 255
    t.string   "name",             limit: 255
    t.string   "type_prohibition", limit: 255
    t.string   "inscription",      limit: 255
    t.string   "date_inscription", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "prohibitions", ["user_id"], name: "index_prohibitions_on_user_id", using: :btree

  create_table "repertories", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.string   "num_repertory",   limit: 255
    t.string   "last_name",       limit: 255
    t.string   "name",            limit: 255
    t.string   "document",        limit: 255
    t.string   "inscription",     limit: 255
    t.time     "time_repertory"
    t.date     "date_repertory"
    t.string   "register",        limit: 255
    t.string   "num_inscription", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "repertories", ["user_id"], name: "index_repertories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "prohibitions", "users"
end
