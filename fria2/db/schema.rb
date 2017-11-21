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

ActiveRecord::Schema.define(version: 20171121075900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_accounts", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "admin_id", null: false
    t.index ["admin_id"], name: "index_admin_accounts_on_admin_id"
    t.index ["user_id"], name: "index_admin_accounts_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "committee_members", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_committee_members_on_user_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.string "title"
    t.string "researcher"
    t.text "coresearchers"
    t.text "objectives"
    t.text "descriptions"
    t.string "attachment"
    t.boolean "is_draft"
    t.integer "status"
    t.integer "votes"
    t.boolean "is_vetoed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "researcher_id"
    t.index ["researcher_id"], name: "index_proposals_on_researcher_id"
  end

  create_table "researchers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_researchers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "attachment"
    t.text "comment"
    t.boolean "is_decided"
    t.boolean "is_vote_yes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "committee_member_id"
    t.bigint "proposal_id"
    t.index ["committee_member_id"], name: "index_reviews_on_committee_member_id"
    t.index ["proposal_id"], name: "index_reviews_on_proposal_id"
  end

  create_table "submission_periods", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proposal_id"
    t.index ["proposal_id"], name: "index_submission_periods_on_proposal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "department"
    t.string "string"
    t.string "contact_number"
    t.string "current_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admins", "users"
  add_foreign_key "committee_members", "users"
  add_foreign_key "proposals", "researchers"
  add_foreign_key "researchers", "users"
  add_foreign_key "reviews", "committee_members"
  add_foreign_key "reviews", "proposals"
  add_foreign_key "submission_periods", "proposals"
end
