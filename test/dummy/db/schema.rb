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

ActiveRecord::Schema.define(version: 20160331194556) do

  create_table "cve_engine_base_metrics_sets", force: :cascade do |t|
    t.integer  "vulnerability_id"
    t.decimal  "score",                  null: false
    t.decimal  "exploit_subscore"
    t.decimal  "impact_subscore"
    t.string   "access_vector"
    t.string   "access_complexity"
    t.string   "authentication"
    t.string   "confidentiality_impact"
    t.string   "integrity_impact"
    t.string   "availability_impact"
    t.datetime "generated_on_datetime"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cve_engine_base_metrics_sets", ["vulnerability_id"], name: "idx_ce_bms_vulnerability"

  create_table "cve_engine_cpe_products", force: :cascade do |t|
    t.string   "cpe_name",    null: false
    t.string   "part"
    t.string   "vendor"
    t.string   "product"
    t.string   "version"
    t.string   "update_name"
    t.string   "edition"
    t.string   "language"
    t.string   "sw_edition"
    t.string   "target_sw"
    t.string   "target_hw"
    t.string   "other"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cve_engine_cpe_products", ["cpe_name"], name: "idx_ce_cp_cpe_name", unique: true
  add_index "cve_engine_cpe_products", ["edition"], name: "idx_ce_cp_edition"
  add_index "cve_engine_cpe_products", ["language"], name: "idx_ce_cp_language"
  add_index "cve_engine_cpe_products", ["other"], name: "idx_ce_cp_other"
  add_index "cve_engine_cpe_products", ["part"], name: "idx_ce_cp_part"
  add_index "cve_engine_cpe_products", ["product", "version"], name: "idx_ce_cp_product_version"
  add_index "cve_engine_cpe_products", ["product"], name: "idx_ce_cp_product"
  add_index "cve_engine_cpe_products", ["sw_edition"], name: "idx_ce_cp_sw_edition"
  add_index "cve_engine_cpe_products", ["target_hw"], name: "idx_ce_cp_target_hw"
  add_index "cve_engine_cpe_products", ["target_sw"], name: "idx_ce_cp_target_sw"
  add_index "cve_engine_cpe_products", ["update_name"], name: "idx_ce_cp_update"
  add_index "cve_engine_cpe_products", ["vendor", "product", "version"], name: "idx_ce_cp_vendor_product_version"
  add_index "cve_engine_cpe_products", ["vendor", "product"], name: "idx_ce_cp_vendor_product"
  add_index "cve_engine_cpe_products", ["vendor"], name: "idx_ce_cp_vendor"
  add_index "cve_engine_cpe_products", ["version"], name: "idx_ce_cp_version"

  create_table "cve_engine_cpe_products_vulnerabilities", force: :cascade do |t|
    t.integer "cpe_product_id"
    t.integer "vulnerability_id"
  end

  add_index "cve_engine_cpe_products_vulnerabilities", ["cpe_product_id"], name: "idx_ce_cp_v_cpe_product"
  add_index "cve_engine_cpe_products_vulnerabilities", ["vulnerability_id"], name: "idx_ce_cp_v_vulnerability"

  create_table "cve_engine_vulnerabilities", force: :cascade do |t|
    t.string   "cve_id"
    t.boolean  "is_cce_id",                default: false
    t.datetime "discovered_datetime"
    t.datetime "disclosure_datetime"
    t.datetime "exploit_publish_datetime"
    t.datetime "published_datetime"
    t.datetime "last_modified_datetime"
    t.string   "security_protection"
    t.string   "summary"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "cve_engine_vulnerabilities", ["cve_id"], name: "idx_ce_v_str_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "name",                               null: false
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0, null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
