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

ActiveRecord::Schema.define(version: 20221020061001) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.text     "body",             limit: 65535
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["commentable_id"], name: "index_comments_on_commentable_id", using: :btree
  end

  create_table "enrollments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_enrollments_on_game_id", using: :btree
    t.index ["user_id"], name: "index_enrollments_on_user_id", using: :btree
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_events_users_on_event_id", using: :btree
    t.index ["user_id"], name: "index_events_users_on_user_id", using: :btree
  end

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.integer  "user_model_id"
    t.text     "body",          limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_model_id"], name: "index_post_models_on_user_model_id", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "title"
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "user_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
  end

  add_foreign_key "enrollments", "games"
  add_foreign_key "enrollments", "users"
  add_foreign_key "events_users", "events"
  add_foreign_key "events_users", "users"
end
