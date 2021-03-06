# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_25_015709) do

  create_table "albums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "datePublish"
    t.bigint "user_id", null: false
    t.boolean "shared", default: true
    t.integer "photos_count"
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "albums_photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "album_id"
    t.index ["album_id"], name: "index_albums_photos_on_album_id"
    t.index ["photo_id"], name: "index_albums_photos_on_photo_id"
  end

  create_table "follows", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "follower_id"
    t.bigint "followee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "datePublish"
    t.bigint "user_id", null: false
    t.boolean "shared", default: true
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "email"
    t.string "password"
    t.datetime "created"
    t.datetime "last_updated"
    t.boolean "admin"
    t.integer "photos_count"
    t.integer "albums_count"
  end

  create_table "votes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.string "voteable_type"
    t.bigint "voteable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_votes_on_user_id"
    t.index ["voteable_type", "voteable_id"], name: "index_votes_on_voteable_type_and_voteable_id"
  end

  add_foreign_key "albums", "users"
  add_foreign_key "albums_photos", "albums"
  add_foreign_key "albums_photos", "photos"
  add_foreign_key "photos", "users"
end
