# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_03_181244) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "vector"

  create_table "contacts", force: :cascade do |t|
    t.bigint "entity_id", null: false
    t.bigint "contact_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contacts_on_contact_id"
    t.index ["entity_id"], name: "index_contacts_on_entity_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manifests", force: :cascade do |t|
    t.bigint "entity_id", null: false
    t.string "stroke", null: false
    t.string "stroke_width"
    t.string "fill"
    t.jsonb "polygon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_manifests_on_entity_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.bigint "entity_id", null: false
    t.string "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["entity_id"], name: "index_messages_on_entity_id"
  end

  create_table "outsiders", force: :cascade do |t|
    t.bigint "entity_id"
    t.string "email"
    t.string "password"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_outsiders_on_entity_id"
  end

  create_table "portals", force: :cascade do |t|
    t.boolean "public"
    t.bigint "outsider_id"
    t.geography "coordinates", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outsider_id"], name: "index_portals_on_outsider_id"
  end

  add_foreign_key "contacts", "entities"
  add_foreign_key "contacts", "entities", column: "contact_id"
  add_foreign_key "manifests", "entities"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "entities"
  add_foreign_key "outsiders", "entities"
  add_foreign_key "portals", "outsiders"
end
