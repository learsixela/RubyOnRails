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

ActiveRecord::Schema.define(version: 2021_07_21_133043) do

  create_table "articulos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "cantidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.integer "paginas"
    t.string "descripcion"
    t.string "ISBN"
    t.integer "autor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["autor_id"], name: "index_libros_on_autor_id"
  end

  create_table "mensajes", force: :cascade do |t|
    t.text "content"
    t.integer "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_mensajes_on_usuario_id"
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.string "email"
    t.string "contrasena"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.string "email"
    t.string "contrasena"
    t.integer "rol_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rol_id"], name: "index_usuarios_on_rol_id"
  end

  add_foreign_key "libros", "autors"
  add_foreign_key "mensajes", "usuarios"
  add_foreign_key "usuarios", "rols"
end
