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

ActiveRecord::Schema.define(version: 20170125175952) do

  create_table "groups", force: :cascade do |t|
    t.string   "university"
    t.string   "generation"
    t.string   "degree"
    t.string   "representative"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cellphone"
    t.string   "base_agradecimiento"
    t.string   "base_agradecimiento_color"
    t.string   "base_agradecimiento_3d"
    t.string   "base_agradecimiento_tamaño"
    t.string   "base_agradecimiento_fondo"
    t.string   "base_agradecimiento_final"
    t.string   "placa_agradecimiento"
    t.string   "placa_agradecimiento_color"
    t.string   "placa_agradecimiento_final"
    t.string   "base_diploma"
    t.string   "base_diploma_color"
    t.string   "base_diploma_3d"
    t.string   "base_diploma_tamaño"
    t.string   "base_diploma_fondo"
    t.string   "base_diploma_final"
    t.string   "placa_diploma"
    t.string   "placa_diploma_color"
    t.string   "placa_diploma_final"
    t.string   "base_foto"
    t.string   "base_foto_color"
    t.string   "base_foto_3d"
    t.string   "base_foto_tamaño"
    t.string   "base_foto_fondo"
    t.string   "base_foto_final"
    t.string   "placa_foto"
    t.string   "placa_foto_color"
    t.string   "placa_foto_final"
    t.string   "anillo"
    t.string   "anillo_tamaño"
    t.string   "anillo_final"
    t.string   "regalo1"
    t.string   "regalo2"
    t.string   "regalo3"
    t.string   "regalo4"
    t.integer  "group_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["group_id"], name: "index_students_on_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
