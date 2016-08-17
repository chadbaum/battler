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

ActiveRecord::Schema.define(version: 20160817190503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_jobs", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "job_id"
    t.boolean  "active",       default: false
    t.integer  "level",        default: 1
    t.integer  "xp",           default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "gender"
    t.integer  "gc",         default: 500
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "party_id"
    t.index ["name"], name: "index_characters_on_name", using: :btree
  end

  create_table "enrolled_jobs", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "job_id"
    t.boolean  "active",       default: false
    t.integer  "level",        default: 1
    t.integer  "xp",           default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "inventory", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "item_id"
    t.integer  "quantity"
    t.boolean  "equipped",     default: false
    t.string   "slot"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "inventory_items", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "item_id"
    t.integer  "quantity"
    t.boolean  "equipped",     default: false
    t.string   "slot"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "subtype"
    t.text     "description"
    t.integer  "power"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["name"], name: "index_items_on_name", using: :btree
    t.index ["subtype"], name: "index_items_on_subtype", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.text     "description"
    t.string   "stat_multiplier"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
    t.index ["alias"], name: "index_jobs_on_alias", using: :btree
    t.index ["slug"], name: "index_jobs_on_slug", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "leader"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "name"
    t.string   "type"
    t.string   "command"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_skills_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
