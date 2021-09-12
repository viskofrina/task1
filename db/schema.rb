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

ActiveRecord::Schema.define(version: 20210912121351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_books", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_author_books_on_author_id", using: :btree
    t.index ["book_id"], name: "index_author_books_on_book_id", using: :btree
  end

  create_table "author_magazines", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "magazine_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["author_id"], name: "index_author_magazines_on_author_id", using: :btree
    t.index ["magazine_id"], name: "index_author_magazines_on_magazine_id", using: :btree
  end

  create_table "authors", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "magazines", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.date     "released_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
