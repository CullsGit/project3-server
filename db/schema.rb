
ActiveRecord::Schema.define(version: 2020_12_01_013731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookbooks", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cookbooks_recipes", id: false, force: :cascade do |t|
    t.integer "cookbook_id"
    t.integer "recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "dish"
    t.string "image"
    t.integer "serves"
    t.integer "time"
    t.string "ingredients", array: true
    t.string "method", array: true
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
