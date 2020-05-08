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

ActiveRecord::Schema.define(version: 20200507193643) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "author"
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "groupnames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "groupnames", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "massages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "body",          limit: 65535
    t.string   "image"
    t.integer  "users_id"
    t.integer  "groupnames_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["groupnames_id"], name: "index_massages_on_groupnames_id", using: :btree
    t.index ["users_id"], name: "index_massages_on_users_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                 null: false
    t.string   "password",             null: false
    t.string   "reset_password_token"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "email"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name", "email"], name: "index_users_on_name_and_email", using: :btree
  end

  create_table "users_groupnames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "groupnames_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["groupnames_id"], name: "index_users_groupnames_on_groupnames_id", using: :btree
    t.index ["user_id"], name: "index_users_groupnames_on_user_id", using: :btree
  end

  add_foreign_key "massages", "groupnames", column: "groupnames_id"
  add_foreign_key "massages", "users", column: "users_id"
  add_foreign_key "users_groupnames", "groupnames", column: "groupnames_id"
  add_foreign_key "users_groupnames", "users"
end
