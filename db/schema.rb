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

ActiveRecord::Schema.define(version: 20181002135213) do

  create_table "articles", force: :cascade do |t|
    t.integer "Articleno", null: false
    t.string "Regno"
    t.text "abstract"
    t.string "Articletype"
    t.string "Language"
    t.text "article"
    t.string "Status"
    t.integer "reg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Articleno"], name: "index_articles_on_Articleno", unique: true
    t.index ["reg_id"], name: "index_articles_on_reg_id"
  end

  create_table "regs", force: :cascade do |t|
    t.string "name"
    t.bigint "contactno"
    t.string "Emailid"
    t.integer "currentsemester"
    t.string "Regid", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Regid"], name: "index_regs_on_Regid", unique: true
  end

end
